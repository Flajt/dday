import 'package:get_it/get_it.dart';

import '../interfaces/ISharedPreferencesWrapper.dart';

class IntroDialogStateService {
  final _sharedPreferencesWrapper = GetIt.I.get<ISharedPreferences>();
  Future<bool> shouldDisplay() async {
    bool? state = await _sharedPreferencesWrapper.getBool("introDialogState");
    if (state == null) {
      state = false;
      await _sharedPreferencesWrapper.setBool("introDialogState", state);
      return true;
    }
    return state;
  }
}
