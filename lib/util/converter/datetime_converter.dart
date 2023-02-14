import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';

class DateTimeConverter {
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

  /// DateTime to String YYYY{/}MM{/}DD 形式
  static String convertToYYYYMMDD(DateTime dateTime, {String delimiter = "/"}) {
    return DateFormat('yyyy${delimiter}MM${delimiter}dd').format(dateTime);
  }

  /// DateTime to String YYYY/MM/DD HH:mm 形式
  static String convertYYYYMMDDHHmm(DateTime dateTime) {
    return DateFormat('yyyy/MM/dd HH:mm').format(dateTime);
  }

  /// DateTime to String MM/DD HH:mm 形式
  static String convertToMMdd(DateTime dateTime) {
    return DateFormat('MM/dd').format(dateTime);
  }

  /// DateTime to String MM/DD HH:mm 形式
  static String convertToMMddHHmm(DateTime dateTime) {
    return DateFormat('MM/dd HH:mm').format(dateTime);
  }

  /// DateTime to String HH:mm 形式
  static String convertToHHmm(DateTime dateTime) {
    return DateFormat('HH:mm').format(dateTime);
  }

  /// DateTime to String YY/MM 形式
  static String convertToYYMM(DateTime dateTime) {
    return DateFormat('yy/MM').format(dateTime);
  }

  /// DateTime to String YY/MM/DD 形式
  static String convertToYYMMDD(DateTime dateTime) {
    return DateFormat('yy/MM/dd').format(dateTime);
  }

  /// String YYYY/MM/DD HH:mm to String MM/DD HH:mm 形式
  static String convertDateTimeStringForMMDDHHmm(String dateTime) {
    return dateTime.substring(5, dateTime.length);
  }

  /// 現在時刻から経過時間または時刻に変換する
  /// 下記6パターンの経過時間を文字列に変換する
  ///
  /// 1. １分以内の場合は「○秒前」
  /// 2. １分以降の場合は「⚪︎分前」
  /// 3. １時間以降の場合は時刻
  /// 4. 当日中ではない場合は「○日前」
  /// 5. 今月中ではない場合は月日
  /// 6. 今年中でない場合は年月日
  ///
  static String convertToLastSendAt(DateTime now, DateTime lastSendAt) {
    final difference = now.difference(lastSendAt);

    /// 今年中でない場合は年月日
    if (lastSendAt.year != now.year) {
      return convertToYYYYMMDD(lastSendAt);
    }

    /// 今月中ではない場合は月日
    if (lastSendAt.month != now.month) {
      return convertToMMdd(lastSendAt);
    }

    /// 当日中ではない場合は「○日前」
    if (difference.inHours.abs() > 24) {
      return "${difference.inHours.abs()}日前";
    }

    /// １時間以降の場合は時刻
    if (difference.inMinutes > 60) {
      return convertToHHmm(lastSendAt);
    }

    /// １分以降の場合は「⚪︎分前」
    if (difference.inSeconds.abs() > 60) {
      return "${difference.inMinutes.abs()}分前";
    }

    /// １分以内の場合は「○秒前」
    return "${difference.inSeconds.abs()}秒前";
  }
}
