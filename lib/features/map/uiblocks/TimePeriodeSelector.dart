import 'package:dday/features/map/bloc/MeetingBloc.dart';
import 'package:dday/features/map/logic/MarkerRepository.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/MeetingBlocEvents.dart';

class TimePeriodeSelector extends StatelessWidget {
  const TimePeriodeSelector({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CupertinoSegmentedControl(
          groupValue: context.watch<MeetingBloc>().timePeriode,
          unselectedColor: Colors.white70,
          children: const {
            TimePeriode.today:
                Padding(padding: EdgeInsets.all(8), child: Text("Heute")),
            TimePeriode.tomorrow:
                Padding(padding: EdgeInsets.all(8), child: Text("Morgen")),
            TimePeriode.custom:
                Padding(padding: EdgeInsets.all(8), child: Text("Benutzer"))
          },
          onValueChanged: (periode) async {
            if (periode == TimePeriode.custom) {
              final DateTime? dateTime = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime.now(),
                  lastDate: DateTime.now().add(const Duration(days: 30)));
              if (dateTime != null) {
                if (context.mounted) {
                  context.read<MeetingBloc>().add(MeetingBlocFindMeetings(
                      timePeriode: periode, dateTime: dateTime));
                }
              }
              return;
            } else {
              context
                  .read<MeetingBloc>()
                  .add(MeetingBlocFindMeetings(timePeriode: periode));
            }
            await Future.delayed(const Duration(milliseconds: 100));
          }),
    );
  }
}
