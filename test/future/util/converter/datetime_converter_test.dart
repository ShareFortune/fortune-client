import 'package:flutter_test/flutter_test.dart';
import 'package:fortune_client/util/converter/datetime_converter.dart';

void main() {
  final now = DateTime(2021, 10, 15, 15, 15);
  const converter = DateTimeConverter.convertToLastSendAt;

  group("DateTimeConverter.convertToLastSendAt", () {
    test("１分以内の場合は「○秒前」を返す", () {
      final datetime = now.add(const Duration(seconds: -5));

      expect(
        converter(now, datetime),
        "5秒前",
      );
    });
    test("１分以降の場合は「⚪︎分前」を返す", () {
      final datetime = now.add(const Duration(minutes: -5));

      expect(
        converter(now, datetime),
        "5分前",
      );
    });

    test("１時間以降の場合は時刻を返す", () {
      final datetime = now.add(const Duration(minutes: -61));

      expect(
        converter(now, datetime),
        DateTimeConverter.convertToHHmm(datetime),
      );
    });

    test("当日中ではない場合は「○日前」を返す", () {
      final datetime = now.add(const Duration(hours: -25));

      expect(
        converter(now, datetime),
        "25日前",
      );
    });

    test("今月中ではない場合は月日を返す", () {
      final datetime = now.add(const Duration(days: -32));

      expect(
        converter(now, datetime),
        DateTimeConverter.convertToMMdd(datetime),
      );
    });

    test("今年中でない場合は年月日を返す", () {
      final datetime = DateTime(2020, 10, 15, 15, 15);

      expect(
        converter(now, datetime),
        DateTimeConverter.convertToYYYYMMDD(datetime),
      );
    });
  });
}
