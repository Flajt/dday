import 'package:dday/features/map/models/RequestModel.dart';

abstract class IMeetingSource {
  Future<RequestModel> getAllMeetings();

  /// Takes in a String bc DateTime returns 01.01.2023 as 1.1.2023 but the API needs 01.01.2023!
  /// [date] needs to look like this dd.mm.yyyy
  Future<RequestModel> getMeetingsAtDate(String date);
  Future<RequestModel> getMeetingsAtDateRange(DateTime start, DateTime end);
}
