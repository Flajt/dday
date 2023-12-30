import 'package:latlong2/latlong.dart';

abstract class IGeoCodingWrapper {
  Future<LatLng> convertToLocation(String address);
}
