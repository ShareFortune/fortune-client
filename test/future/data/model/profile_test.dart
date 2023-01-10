import 'package:flutter_test/flutter_test.dart';
import 'package:fortune_client/data/model/form/create_profile_form/create_profile_form.dart';

import '../../../fixtures/fixture_reader.dart';

void main() {
  test("プロフィールフォームの作成", () async {
    final images = ProfileFormImages(mainImage: "base64");
    final form = ProfileForm(
      name: "dai",
      gender: "MAN",
      images: images.toJson(),
      addressId: 1,
      height: 170,
      drinkFrequency: "OFTEN",
      cigaretteFrequency: "OFTEN",
    );

    final matcher = await jsonReader("create_profile_form.json");

    form.toJson().forEach((key, value) {
      expect(value, matcher[key]);
    });
  });
}
