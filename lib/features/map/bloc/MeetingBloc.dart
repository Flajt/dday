import 'package:dday/features/map/bloc/MeetingBlocEvents.dart';
import 'package:dday/features/map/bloc/MeetingBlocStates.dart';
import 'package:dday/features/map/logic/MarkerRepository.dart';
import 'package:dday/features/map/models/MarkerModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import '../interfaces/IMarkerRepository.dart';

class MeetingBloc extends Bloc<MeetingBlocEvents, MeetingBlocStates> {
  final GetIt getIt = GetIt.instance;
  final repository = GetIt.I.get<IMarkerRepository>();
  List<MarkerModel> localMarker = [];
  TimePeriode timePeriode = TimePeriode.today;
  MeetingBloc() : super(const MeetingBlocInitial()) {
    on<MeetingBlocFindMeetings>((event, emit) async {
      try {
        final marker = await repository.getMarker(
            timePeriode: event.timePeriode, dateTime: event.dateTime);
        localMarker = marker;
        timePeriode = event.timePeriode;
        emit(MeetingBlocFoundMeetings(marker));
      } catch (e, stack) {
        debugPrintStack(stackTrace: stack);
        emit(MeetingBlocHasError(e.toString()));
      }
    });
    on<FindMeetingByQuery>((event, emit) async {
      try {
        if (localMarker.isEmpty) {
          final marker = await repository.getMarker();
          localMarker = marker;
        }
        final marker = localMarker
            .where((element) =>
                element.topic.toLowerCase().contains(event.query.toLowerCase()))
            .toList();
        emit(MeetingBlocFoundMeetings(marker));
      } catch (e) {
        emit(MeetingBlocHasError(e.toString()));
      }
    });
  }
}
