import 'package:dday/features/info/uiblocks/InfoDialog.dart';
import 'package:dday/features/map/bloc/MeetingBloc.dart';
import 'package:dday/features/map/bloc/MeetingBlocStates.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../map/bloc/MeetingBlocEvents.dart';

class SearchBottomSheet extends StatelessWidget {
  const SearchBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: .1,
      maxChildSize: 1,
      minChildSize: .1,
      expand: true,
      snapSizes: const [0.5],
      snap: true,
      builder: (context, controller) => Container(
        padding: const EdgeInsets.only(top: 10, left: 8, right: 8),
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        child: CustomScrollView(controller: controller, slivers: [
          SliverToBoxAdapter(
            child: TextFormField(
                onChanged: (value) => context
                    .read<MeetingBloc>()
                    .add(FindMeetingByQuery(query: value)),
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Suche nach Demos")),
          ),
          BlocBuilder<MeetingBloc, MeetingBlocStates>(
              builder: (context, state) {
            if (state is MeetingBlocFoundMeetings) {
              return SliverList.builder(
                  itemCount: state.meetings.length,
                  itemBuilder: (context, index) {
                    final meeting = state.meetings[index];
                    return ListTile(
                      onTap: () => showDialog(
                          context: context,
                          builder: (context) =>
                              InfoDialog(markerModel: state.meetings[index])),
                      title: Text(
                        meeting.topic,
                        overflow: TextOverflow.ellipsis,
                        softWrap: true,
                      ),
                      subtitle: Text(meeting.location),
                    );
                  });
            } else if (state is MeetingBlocHasError) {
              return SliverToBoxAdapter(
                child: Center(
                    child: Container(
                        width: 250,
                        height: 250,
                        color: Colors.white60,
                        child: Center(
                          child: Text(
                            state.message.toString(),
                            textAlign: TextAlign.center,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ))),
              );
            } else {
              return const SliverToBoxAdapter(
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              );
            }
          }),
        ]),
      ),
    );
  }
}
