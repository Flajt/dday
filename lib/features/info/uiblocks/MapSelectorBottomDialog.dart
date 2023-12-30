import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../logic/MapLauncherWrapper.dart';

class MapSelectorBottomBar extends StatelessWidget {
  final double latitude;
  final double longitude;
  const MapSelectorBottomBar(
      {super.key, required this.latitude, required this.longitude});

  @override
  Widget build(BuildContext context) {
    final MapLauncherWrapper mapLauncherWrapper = MapLauncherWrapper();
    return FutureBuilder(
        future: mapLauncherWrapper.getInstalledMaps(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return SingleChildScrollView(
              child: SizedBox(
                child: Wrap(
                  children: <Widget>[
                    for (var map in snapshot.data!)
                      ListTile(
                        onTap: () => mapLauncherWrapper.launchMap(
                            latitude, longitude, map),
                        title: Text(map.mapName),
                        leading: SvgPicture.asset(
                          map.icon,
                          height: 30.0,
                          width: 30.0,
                        ),
                      ),
                  ],
                ),
              ),
            );
          } else {
            return const CircularProgressIndicator.adaptive();
          }
        });
  }
}
