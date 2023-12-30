import 'package:get_it/get_it.dart';

import '../map/interfaces/IDBWrapper.dart';
import '../map/interfaces/IDateTimeHelper.dart';

class CleanUpService {
  final _dbWrapper = GetIt.I.get<IDBWrapper>();
  final _dateTimeHelper = GetIt.I.get<IDateTimeHelper>();
  Future<void> cleanUp() async {
    await _dbWrapper
        .deletePrevious(_dateTimeHelper.getddMMyyyyOnly(DateTime.now()));
  }
}
