import 'package:fortune_client/data/model/enum/gender.dart';
import 'package:fortune_client/util/converter/image_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'fortune_user.freezed.dart';
part 'fortune_user.g.dart';

@freezed
class FortuneUser with _$FortuneUser {
  const FortuneUser._();
  const factory FortuneUser({
    required String id,
    required String name,
    @GenderConverter() required Gender gender,
    required String mainImageURL,
  }) = _FortuneUser;

  String get image => ImageConverter.convertHttpsToHttp(mainImageURL);

  factory FortuneUser.fromJson(Map<String, dynamic> json) =>
      _$FortuneUserFromJson(json);
}
