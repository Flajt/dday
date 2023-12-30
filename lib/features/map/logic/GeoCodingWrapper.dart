import 'package:dday/features/map/interfaces/IGeoCodingWrapper.dart';
import 'package:geocoding/geocoding.dart';
import 'package:latlong2/latlong.dart';

class GeoCodingWrapper implements IGeoCodingWrapper {
  @override
  Future<LatLng> convertToLocation(String address) async {
    List<Location> locations = await locationFromAddress(address);
    return LatLng(locations.first.latitude, locations.first.longitude);
  }
}
