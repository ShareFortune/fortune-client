import 'package:flutter_test/flutter_test.dart';

import '../../../fixtures/model/profile.dart';

void main() {
  group("バリデーションチェック", () {
    test("入力された名前が3文字以上・10文字以下の場合", () {
      const testName = "12345";
      final profile = tProfile.copyWith(name: testName);
      expect(profile.name, testName);
    });
    test("入力された名前が3文字以下の場合", () {
      expect(
        () => tProfile.copyWith(name: "1"),
        throwsA(predicate((p0) {
          return p0 is AssertionError && p0.message == 'ユーザ名は3文字以上です。';
        })),
      );
    });
    test("入力された名前が10文字以上の場合", () {
      expect(
        () => tProfile.copyWith(name: "12345678901"),
        throwsA(predicate((p0) {
          return p0 is AssertionError && p0.message == 'ユーザ名は10文字以下です。';
        })),
      );
    });
  });
}
