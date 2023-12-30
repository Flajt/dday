import 'package:map_launcher/map_launcher.dart';

class MapLauncherWrapper {
  Future<List<AvailableMap>> getInstalledMaps() async {
    return await MapLauncher.installedMaps;
  }

  Future<void> launchMap(
      double latitude, double longitude, AvailableMap map) async {
    await MapLauncher.showDirections(
        mapType: map.mapType,
        destination: Coords(latitude, longitude),
        directionsMode: DirectionsMode.transit);
  }
}
