import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';

class DateTimeFormatConverter {
  /// dateTime to String
  /// [dateTime] 変換前の日時
  static Future<String> dateTimeToString(
    DateTime dateTime, {
    String format = 'yyyy-MM-dd HH:mm',
  }) async {
    await initializeDateFormatting('ja_JP');

    return DateFormat(format).format(dateTime);
  }

  static Future<DateTime> stringToDateTime(
    String string, {
    String format = 'yyyy-MM-dd HH:mm',
  }) async {
    await initializeDateFormatting('ja_JP');

    return DateFormat(format).parse(string);
  }

  /// dateTime to String YYYY/MM/DD 形式
  static String convertDateTimeYYYYMMDD(DateTime dateTime) {
    return DateFormat('yyyy/MM/dd').format(dateTime);
  }

  /// dateTime to String YYYY/MM/DD HH:mm 形式
  static String convertDateTime(DateTime dateTime) {
    return DateFormat('yyyy/MM/dd HH:mm').format(dateTime);
  }

  static String convertDateTimeForMMddHHmm(DateTime dateTime) {
    return DateFormat('MM/dd HH:mm').format(dateTime);
  }

  static String convertDateTimeForHHmm(DateTime dateTime) {
    return DateFormat('HH:mm').format(dateTime);
  }

  static String convertDateTimeForYYMM(DateTime dateTime) {
    return DateFormat('yy/MM').format(dateTime);
  }

  static String convertDateTimeForYYMMDD(DateTime dateTime) {
    return DateFormat('yy/MM/dd').format(dateTime);
  }

  /// String YYYY/MM/DD HH:mm to String MM/DD HH:mm 形式
  static String convertDateTimeStringForMMDDHHmm(String dateTime) {
    return dateTime.substring(5, dateTime.length);
  }
}
