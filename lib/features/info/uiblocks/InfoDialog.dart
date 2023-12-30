import 'package:dday/features/info/uiblocks/MapSelectorBottomDialog.dart';
import 'package:dday/features/map/models/MarkerModel.dart';
import 'package:flutter/material.dart';

class InfoDialog extends StatelessWidget {
  final MarkerModel markerModel;
  const InfoDialog({super.key, required this.markerModel});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        padding: const EdgeInsets.all(8),
        width: 400,
        height: 410,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(markerModel.topic,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyLarge),
            ListTile(
                leading: const Icon(Icons.alarm),
                subtitle: Text("${markerModel.location}, ${markerModel.plz}"),
                title: Text(
                    "${markerModel.from.hour.toString()}:${markerModel.from.minute.toString()} - ${markerModel.to.hour.toString()}:${markerModel.to.minute.toString()}")),
            markerModel.route.isNotEmpty
                ? Expanded(
                    child: SingleChildScrollView(
                      child: SizedBox(
                          child: Text(
                        markerModel.route.join(" "),
                        textAlign: TextAlign.center,
                      )),
                    ),
                  )
                : const SizedBox(),
            Center(
                child: IconButton(
                    icon: const Icon(Icons.map),
                    onPressed: () => showModalBottomSheet(
                        context: context,
                        builder: (context) => MapSelectorBottomBar(
                            latitude: markerModel.locationGPS!.latitude!,
                            longitude: markerModel.locationGPS!.longitude!))))
          ],
        ),
      ),
    );
  }
}
