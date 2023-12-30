import 'package:dday/features/map/models/MarkerModel.dart';

import '../models/LatLng.dart';
import '../models/LocationModel.dart';

abstract class IDBWrapper {
  Future<void> init();
  Future<LocationModel?> lookUpLocation(String location);
  Future<void> saveLocation(String location, LatLng locationGPS);
  Future<void> saveMarkerModels(List<MarkerModel> models);
  Future<List<MarkerModel>> getAtDay(DateTime dateTime);
  Future<List<MarkerModel>> findMarkerModelsByQuery(String query);
  Future<void> deletePrevious(DateTime today);
}
