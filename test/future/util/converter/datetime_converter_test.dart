import 'package:flutter_test/flutter_test.dart';
import 'package:fortune_client/util/converter/datetime_converter.dart';

void main() {
  final now = DateTime(2021, 10, 15, 15, 15);
  const converter = DateTimeConverter.convertToLastSendAt;

  group("DateTimeConverter.convertToLastSendAt", () {
    test("１時間以内の場合", () {
      final datetime = now.add(const Duration(minutes: -1));
      const matcher = "１時間以内の場合";

      expect(converter(now, datetime), matcher);
    });

    test("１時間以降の場合", () {
      final datetime = now.add(const Duration(minutes: -61));
      const matcher = "１時間以降の場合";

      expect(converter(now, datetime), matcher);
    });

    test("当日ではない場合", () {
      final datetime = now.add(const Duration(hours: -25));
      const matcher = "当日ではない場合";

      expect(converter(now, datetime), matcher);
    });

    test("今月中ではない場合", () {
      final datetime = now.add(const Duration(days: -32));
      const matcher = "今月中ではない場合";

      expect(converter(now, datetime), matcher);
    });

    test("今年中でない場合", () {
      final datetime = DateTime(2020, 10, 15, 15, 15);
      const matcher = "今年中でない場合";

      expect(converter(now, datetime), matcher);
    });
  });
}
