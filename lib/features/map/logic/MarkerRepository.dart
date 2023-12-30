import 'package:dday/features/map/interfaces/IMarkerRepository.dart';
import 'package:dday/features/map/models/LocationModel.dart';
import 'package:dday/features/map/models/MarkerModel.dart';
import 'package:dday/features/map/models/MeetingModel.dart';
import 'package:get_it/get_it.dart';
import 'package:latlong2/latlong.dart';
import '../models/LatLng.dart' as l;
import '../interfaces/IDateTimeHelper.dart';

import '../interfaces/IDBWrapper.dart';
import '../interfaces/IGeoCodingWrapper.dart';
import '../interfaces/IMeetingSource.dart';
import '../models/RequestModel.dart';

enum TimePeriode {
  today,
  tomorrow,
  custom,
}

class MarkerRepository implements IMarkerRepository {
  final _geoCodingWrapper = GetIt.I.get<IGeoCodingWrapper>();
  final _meetingSource = GetIt.I.get<IMeetingSource>();
  final _dbWrapper = GetIt.I.get<IDBWrapper>();
  final _dateTimeHelper = GetIt.I.get<IDateTimeHelper>();

  @override
  Future<List<MarkerModel>> getMarker(
      {TimePeriode timePeriode = TimePeriode.today, DateTime? dateTime}) async {
    List<MarkerModel> markerModels = [];
    final today = DateTime.now();
    switch (timePeriode) {
      case TimePeriode.today:
        markerModels =
            await _dbWrapper.getAtDay(_dateTimeHelper.getddMMyyyyOnly(today));
        break;
      case TimePeriode.tomorrow:
        markerModels = await _dbWrapper.getAtDay(_dateTimeHelper
            .getddMMyyyyOnly(today)
            .add(const Duration(days: 1)));
        break;
      case TimePeriode.custom:
        markerModels = await _dbWrapper
            .getAtDay(_dateTimeHelper.getddMMyyyyOnly(dateTime!));
        break;
    }
    if (markerModels.isEmpty) {
      RequestModel? requestModel;
      final today = DateTime.now();
      switch (timePeriode) {
        case TimePeriode.today:
          requestModel = await _meetingSource.getMeetingsAtDate(
              _dateTimeHelper.convertToddMMyyyyString(today));
          break;
        case TimePeriode.tomorrow:
          requestModel = await _meetingSource.getMeetingsAtDate(_dateTimeHelper
              .convertToddMMyyyyString(today.add(const Duration(days: 1))));
          break;
        case TimePeriode.custom:
          if (dateTime != null) {
            requestModel = await _meetingSource.getMeetingsAtDate(
                _dateTimeHelper.convertToddMMyyyyString(dateTime));
          } else {
            requestModel = await _meetingSource.getMeetingsAtDate(
                _dateTimeHelper.convertToddMMyyyyString(today));
          }
          break;
        default:
          requestModel = await _meetingSource.getMeetingsAtDate(
              _dateTimeHelper.convertToddMMyyyyString(today));
          break;
      }

      if (requestModel.count == 0) {
        return [];
      } else if (requestModel.count >= 1) {
        for (MeetingModel model in requestModel.index) {
          l.LatLng? location;

          /// 1.  Look into cache if the address is already there
          final String locationString =
              "${model.strasseNr},${model.plz},Berlin";
          location = await _lookUpLocation(locationString);

          /// 4. Create a marker with the location
          final marker = MarkerModel(
              _dateTimeHelper.convertFromStringToddMMyyyy(model.datum),
              _dateTimeHelper.convertFromStringToddmm(model.von),
              _dateTimeHelper.convertFromStringToddmm(model.von),
              locationString,
              model.thema,
              model.aufzugsStrecke,
              model.lfdnr,
              location,
              [],
              model.plz);
          markerModels.add(marker);
        }
        await _dbWrapper.saveMarkerModels(markerModels);
      }
    } else {
      final tempModels = List.generate(
          markerModels.length, (index) => markerModels[index],
          growable: false);
      for (MarkerModel model in markerModels) {
        if (model.locationGPS == null) {
          final location = await _lookUpLocation(model.location);
          tempModels.add(model.copyWith(locationGPS: location));
        }
      }
      markerModels = tempModels;
    }
    return markerModels;
  }

  Future<l.LatLng?> _lookUpLocation(String locationString) async {
    l.LatLng? location;
    LocationModel? cacheResult =
        await _dbWrapper.lookUpLocation(locationString);
    if (cacheResult == null) {
      /// 2. If not convert the address to a location
      LatLng geoCodingResult =
          await _geoCodingWrapper.convertToLocation(locationString);
      location = l.LatLng(
          latitude: geoCodingResult.latitude,
          longitude: geoCodingResult.longitude);

      /// 3. Add the location to the cache
      if (locationString != ",,Berlin") {
        await _dbWrapper.saveLocation(
            locationString,
            l.LatLng(
                latitude: location.latitude, longitude: location.longitude));
      }
    } else {
      location = l.LatLng(
          latitude: cacheResult.location.latitude,
          longitude: cacheResult.location.longitude);
    }
    return location;
  }
}
