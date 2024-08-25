import 'dart:io';
import 'package:dday/features/info/uiblocks/InfoDialog.dart';
import 'package:dday/features/map/bloc/MeetingBloc.dart';
import 'package:dday/features/map/bloc/MeetingBlocStates.dart';
import 'package:dday/features/map/uiblocks/TimePeriodeSelector.dart';
import 'package:dday/features/settings/uiblocks/SettingsButton.dart';
import 'package:dio_cache_interceptor_hive_store/dio_cache_interceptor_hive_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_cache/flutter_map_cache.dart';
import 'package:flutter_map_location_marker/flutter_map_location_marker.dart';
import 'package:flutter_map_marker_cluster/flutter_map_marker_cluster.dart';
import 'package:latlong2/latlong.dart';
import 'package:path_provider/path_provider.dart';

class Map extends StatelessWidget {
  const Map({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Directory>(
        future: getApplicationSupportDirectory(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(
                child: Container(
                    width: 250,
                    height: 250,
                    color: Colors.white60,
                    child: Center(
                      child: Text(
                        snapshot.error.toString(),
                        textAlign: TextAlign.center,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    )));
          } else {
            return FlutterMap(
                options: const MapOptions(
                    initialCenter: LatLng(52.5202442, 13.3998531),
                    initialZoom: 10.0),
                children: [
                  TileLayer(
                    urlTemplate:
                        'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                    tileProvider: CachedTileProvider(
                        maxStale: const Duration(days: 30),
                        store: HiveCacheStore(snapshot.data!.path)),
                  ),
                  BlocBuilder<MeetingBloc, MeetingBlocStates>(
                      builder: (context, state) {
                    if (state is MeetingBlocFoundMeetings) {
                      final markers = state.meetings
                          .map((e) => Marker(
                              point: LatLng(
                                e.locationGPS!.latitude!,
                                e.locationGPS!.longitude!,
                              ),
                              child: IconButton(
                                icon: const Icon(
                                  Icons.group,
                                  color: Colors.black,
                                ),
                                onPressed: () => showDialog(
                                    context: context,
                                    builder: (context) =>
                                        InfoDialog(markerModel: e)),
                              )))
                          .toList();
                      return MarkerClusterLayerWidget(
                          options: MarkerClusterLayerOptions(
                              markers: markers,
                              builder: (context, marker) => const Icon(
                                    Icons.circle,
                                  )));
                    } else if (state is MeetingBlocHasError) {
                      return Center(
                          child: Container(
                              width: 250,
                              height: 250,
                              color: Colors.white60,
                              child: Center(
                                child: Text(
                                  state.message.toString(),
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold),
                                ),
                              )));
                    }
                    return const SizedBox();
                  }),
                  const SimpleAttributionWidget(
                      source: Text('OpenStreetMap contributors')),
                  CurrentLocationLayer(),
                  const Align(
                      alignment: Alignment.topRight,
                      child: TimePeriodeSelector()),
                  const Align(
                      alignment: Alignment.topLeft, child: SettingsButton())
                ]);
          }
        });
  }
}
