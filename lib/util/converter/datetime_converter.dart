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
  static String toYYYYMMDD(DateTime dateTime, {String delimiter = "/"}) {
    return DateFormat('yyyy${delimiter}MM${delimiter}dd').format(dateTime);
  }

  /// DateTime to String YYYY/MM/DD HH:mm 形式
  static String toYYYYMMDDHHmm(DateTime dateTime) {
    return DateFormat('yyyy/MM/dd HH:mm').format(dateTime);
  }

  /// DateTime to String MM/DD HH:mm 形式
  static String toMMdd(DateTime dateTime) {
    return DateFormat('MM/dd').format(dateTime);
  }

  /// DateTime to String MM/DD HH:mm 形式
  static String toMMddHHmm(DateTime dateTime) {
    return DateFormat('MM/dd HH:mm').format(dateTime);
  }

  /// DateTime to String HH:mm 形式
  static String toHHmm(DateTime dateTime) {
    return DateFormat('HH:mm').format(dateTime);
  }

  /// DateTime to String YY/MM 形式
  static String toYYMM(DateTime dateTime) {
    return DateFormat('yy/MM').format(dateTime);
  }

  /// DateTime to String YY/MM/DD 形式
  static String toYYMMDD(DateTime dateTime) {
    return DateFormat('yy/MM/dd').format(dateTime);
  }

  /// 現在時刻から経過時間または時刻に変換する
  /// 下記6パターンの経過時間を文字列に変換する
  ///
  /// 1. １分以内の場合は「⚪︎秒前」
  /// 2. １分以降の場合は「⚪︎分前」
  /// 3. １時間以降の場合は時刻
  /// 4. 当日中ではない場合は「⚪︎日前」
  /// 5. 今月中ではない場合は月日
  /// 6. 今年中でない場合は年月日
  ///
  static String toLastSendAt(
    DateTime now,
    DateTime lastSendAt,
  ) {
    final difference = now.difference(lastSendAt);

    /// 今年中でない場合は年月日
    if (lastSendAt.year != now.year) {
      return toYYYYMMDD(lastSendAt);
    }

    /// 今月中ではない場合は月日
    if (lastSendAt.month != now.month) {
      return toMMdd(lastSendAt);
    }

    /// 当日中ではない場合は「○日前」
    if (difference.inHours.abs() > 24) {
      return "${difference.inHours.abs()}日前";
    }

    /// １時間以降の場合は時刻
    if (difference.inMinutes > 60) {
      return toHHmm(lastSendAt);
    }

    /// １分以降の場合は「⚪︎分前」
    if (difference.inSeconds.abs() > 60) {
      return "${difference.inMinutes.abs()}分前";
    }

    /// １分以内の場合は「○秒前」
    return "${difference.inSeconds.abs()}秒前";
  }
}
