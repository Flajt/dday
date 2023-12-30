import 'package:dday/features/map/models/MarkerModel.dart';
import 'package:equatable/equatable.dart';

abstract class MeetingBlocStates extends Equatable {
  const MeetingBlocStates();
}

class MeetingBlocInitial extends MeetingBlocStates {
  const MeetingBlocInitial();

  @override
  List<Object?> get props => [];
}

class MeetingBlocLoading extends MeetingBlocStates {
  const MeetingBlocLoading();

  @override
  List<Object?> get props => [];
}

class MeetingBlocFoundMeetings extends MeetingBlocStates {
  final List<MarkerModel> meetings;
  const MeetingBlocFoundMeetings(this.meetings);

  @override
  List<Object?> get props => [meetings];
}

class MeetingBlocHasError extends MeetingBlocStates {
  final String message;
  const MeetingBlocHasError(this.message);

  @override
  List<Object?> get props => [message];
}
