import 'package:intl/intl.dart';

import '../interfaces/IDateTimeHelper.dart';

class DateTimeHelper implements IDateTimeHelper {
  @override
  DateTime getddMMyyyyOnly(DateTime dateTime) {
    return DateTime(dateTime.year, dateTime.month, dateTime.day);
  }

  @override
  String convertToddMMyyyyString(DateTime dateTime) {
    return DateFormat("dd.MM.yyyy").format(dateTime);
  }

  @override
  DateTime convertFromStringToddMMyyyy(String dateTime) {
    return DateFormat("dd.MM.yyyy").parse(dateTime);
  }

  @override
  DateTime convertFromStringToddmm(String timeString) {
    return DateFormat("hh:mm").parse(timeString);
  }
}
