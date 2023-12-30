abstract class IDateTimeHelper {
  DateTime getddMMyyyyOnly(DateTime dateTime);
  String convertToddMMyyyyString(DateTime dateTime);
  DateTime convertFromStringToddMMyyyy(String dateTime);
  DateTime convertFromStringToddmm(String timeString);
}
