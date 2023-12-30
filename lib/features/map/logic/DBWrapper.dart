import 'package:dday/features/map/interfaces/IDBWrapper.dart';
import 'package:dday/features/map/models/LocationModel.dart';
import 'package:dday/features/map/models/MarkerModel.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

import '../models/LatLng.dart';

class DBWrapper implements IDBWrapper {
  Isar? isar;
  @override
  Future<void> init() async {
    if (isar?.isOpen ?? false == false) {
      final dir = await getApplicationSupportDirectory();
      isar = await Isar.open([MarkerModelSchema, LocationModelSchema],
          directory: dir.path);
    }
  }

  @override
  Future<LocationModel?> lookUpLocation(String location) async {
    final locationModel = await isar!.txn(() async {
      return await isar!
          .collection<LocationModel>()
          .filter()
          .locationStringEqualTo(location)
          .findFirst();
    });
    return locationModel;
  }

  @override
  Future<void> saveLocation(String location, LatLng locationGPS) async {
    final locationModel = LocationModel(location, locationGPS);
    await isar!.writeTxn(() async {
      await isar!.collection<LocationModel>().put(locationModel);
    });
  }

  @override
  Future<void> saveMarkerModels(List<MarkerModel> models) async {
    await isar!.writeTxn(() async {
      await isar!.collection<MarkerModel>().putAll(models);
    });
  }

  @override
  Future<List<MarkerModel>> findMarkerModelsByQuery(String query) async {
    return await isar!.txn<List<MarkerModel>>(() async {
      return await isar!
          .collection<MarkerModel>()
          .filter()
          .topicContains(query, caseSensitive: false)
          .findAll();
    });
  }

  @override
  Future<void> deletePrevious(DateTime today) async {
    await isar!.writeTxn(() async {
      return await isar!
          .collection<MarkerModel>()
          .filter()
          .dateLessThan(today)
          .deleteAll();
    });
  }

  @override
  Future<List<MarkerModel>> getAtDay(DateTime dateTime) async {
    return isar!.txn(() async {
      return await isar!
          .collection<MarkerModel>()
          .filter()
          .dateEqualTo(dateTime)
          .findAll();
    });
  }
}
