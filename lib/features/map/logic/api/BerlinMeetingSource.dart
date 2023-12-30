import 'dart:convert';

import 'package:dday/features/map/interfaces/IMeetingSource.dart';
import 'package:dday/features/map/models/RequestModel.dart';
import 'package:http/http.dart' as http;

class BerlinMeetingSource implements IMeetingSource {
  const BerlinMeetingSource();
  final String url =
      "https://www.berlin.de/polizei/service/versammlungsbehoerde/versammlungen-aufzuege/index.php/index/all.json";
  @override
  Future<RequestModel> getAllMeetings() async {
    http.Response resp = await http.get(Uri.parse(url));
    if (resp.statusCode == 200) {
      final json = jsonDecode(resp.body);
      return RequestModel.fromJson(json);
    } else {
      throw Exception("Error: ${resp.statusCode}");
    }
  }

  @override
  Future<RequestModel> getMeetingsAtDate(String date) async {
    final urlAtDate = "$url?datum=$date";
    http.Response resp = await http.get(Uri.parse(urlAtDate));
    if (resp.statusCode == 200) {
      final json = jsonDecode(resp.body);
      final model = RequestModel.fromJson(json);
      return model;
    } else {
      throw Exception("Error: ${resp.statusCode}");
    }
  }

  @override
  Future<RequestModel> getMeetingsAtDateRange(DateTime start, DateTime end) {
    throw UnimplementedError();
  }
}
