import 'package:isar/isar.dart';
import './LatLng.dart';
part 'MarkerModel.g.dart';

@collection
class MarkerModel {
  Id? id = Isar.autoIncrement;
  final DateTime date;
  final DateTime from;
  final DateTime to;
  final String location;
  final LatLng? locationGPS;
  final String topic;
  final List<String> route;
  final List<LatLng> routeGPS;
  final String lfdnr;
  final String plz;

  MarkerModel(this.date, this.from, this.to, this.location, this.topic,
      this.route, this.lfdnr, this.locationGPS, this.routeGPS, this.plz);

  @override
  String toString() {
    return 'MarkerModel{date: $date, from: $from, to: $to, location: $location, topic: $topic, route: $route, lfdnr: $lfdnr, locationGPS: $locationGPS, routeGPS: $routeGPS}, plz: $plz';
  }

  MarkerModel copyWith(
      {DateTime? date,
      DateTime? from,
      DateTime? to,
      String? location,
      String? topic,
      List<String>? route,
      String? lfdnr,
      LatLng? locationGPS,
      List<LatLng>? routeGPS,
      String? plz}) {
    return MarkerModel(
        date ?? this.date,
        from ?? this.from,
        to ?? this.to,
        location ?? this.location,
        topic ?? this.topic,
        route ?? this.route,
        lfdnr ?? this.lfdnr,
        locationGPS ?? this.locationGPS,
        routeGPS ?? this.routeGPS,
        plz ?? this.plz);
  }
}
