import 'package:isar/isar.dart';
import 'LatLng.dart';
part 'LocationModel.g.dart';

@collection
class LocationModel {
  Id id = Isar.autoIncrement;
  final String locationString;
  final LatLng location;

  LocationModel(this.locationString, this.location);
}
