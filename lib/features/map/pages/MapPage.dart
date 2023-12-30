import 'package:dday/features/intro/logic/IntroDialogStateService.dart';
import 'package:dday/features/intro/uiblocks/IntroDialog.dart';
import 'package:dday/features/search/uiblock/SearchBottomSheet.dart';
import 'package:flutter/material.dart';
import '../uiblocks/Map.dart';

class MapPage extends StatelessWidget {
  const MapPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SizedBox.expand(
              child: Stack(children: [
        FutureBuilder(
            future: IntroDialogStateService().shouldDisplay(),
            builder: (context, snapshot) {
              if (snapshot.hasData && snapshot.data == true) {
                Future.delayed(const Duration(milliseconds: 500)).then(
                    (value) => showDialog(
                        context: context,
                        builder: (context) => const IntroDialog()));
              }
              return const SizedBox.shrink();
            }),
        const Map(),
        const SearchBottomSheet()
      ]))),
    );
  }
}
