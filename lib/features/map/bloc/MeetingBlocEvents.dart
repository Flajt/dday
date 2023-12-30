import 'package:dday/features/map/logic/MarkerRepository.dart';

abstract class MeetingBlocEvents {
  const MeetingBlocEvents();
}

class MeetingBlocFindMeetings extends MeetingBlocEvents {
  final TimePeriode timePeriode;
  final DateTime? dateTime;
  const MeetingBlocFindMeetings(
      {this.timePeriode = TimePeriode.today, this.dateTime});
}

class FindMeetingByQuery extends MeetingBlocEvents {
  final String query;
  final TimePeriode timePeriode;
  const FindMeetingByQuery(
      {required this.query, this.timePeriode = TimePeriode.today});
}
