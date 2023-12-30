import 'package:dday/features/cleanUp/CleanUpService.dart';
import 'package:dday/features/intro/interfaces/ISharedPreferencesWrapper.dart';
import 'package:dday/features/intro/logic/SharedPreferencesWrapper.dart';
import 'package:dday/features/map/interfaces/IDBWrapper.dart';
import 'package:dday/features/map/interfaces/IGeoCodingWrapper.dart';
import 'package:dday/features/map/interfaces/IMarkerRepository.dart';
import 'package:dday/features/map/interfaces/IMeetingSource.dart';
import 'package:dday/features/map/logic/DBWrapper.dart';
import 'package:dday/features/map/logic/DateTimeHelper.dart';
import 'package:dday/features/map/logic/api/BerlinMeetingSource.dart';
import 'package:dday/features/map/pages/MapPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import 'features/map/bloc/MeetingBloc.dart';
import 'features/map/bloc/MeetingBlocEvents.dart';
import 'features/map/interfaces/IDateTimeHelper.dart';
import 'features/map/logic/GeoCodingWrapper.dart';
import 'features/map/logic/MarkerRepository.dart';
import 'features/settings/pages/SettingsPage.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final getIt = GetIt.I;
  getIt.registerFactory<IMeetingSource>(() => const BerlinMeetingSource());
  getIt.registerSingleton<IDBWrapper>(DBWrapper());
  await getIt.get<IDBWrapper>().init();
  getIt.registerFactory<IGeoCodingWrapper>(() => GeoCodingWrapper());
  getIt.registerFactory<IMarkerRepository>(() => MarkerRepository());
  getIt.registerFactory<IDateTimeHelper>(() => DateTimeHelper());
  getIt.registerFactory<ISharedPreferences>(() => SharedPreferencesWrapper());
  await CleanUpService().cleanUp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
              create: (context) =>
                  MeetingBloc()..add(const MeetingBlocFindMeetings()))
        ],
        child: MaterialApp(
            debugShowCheckedModeBanner: false,
            routes: {
              "/settings": (context) => const SettingsPage(),
            },
            title: 'DDay',
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(
                  seedColor: const Color(0xffE33525),
                  secondary: Colors.white,
                  tertiary: Colors.black),
              useMaterial3: true,
            ),
            home: const MapPage()));
  }
}
