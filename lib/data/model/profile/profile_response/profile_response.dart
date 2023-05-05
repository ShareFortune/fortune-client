import 'package:fortune_client/data/model/addresses/address/address.dart';
import 'package:fortune_client/data/model/enum/cigarette_frequency.dart';
import 'package:fortune_client/data/model/enum/drink_frequency.dart';
import 'package:fortune_client/data/model/enum/gender.dart';
import 'package:fortune_client/data/model/tags/tag/tag.dart';
import 'package:fortune_client/util/converter/image_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_response.freezed.dart';
part 'profile_response.g.dart';

@freezed
class ProfileIdResponse with _$ProfileIdResponse {
  const factory ProfileIdResponse({
    required String id,
  }) = _ProfileIdResponse;

  factory ProfileIdResponse.fromJson(Map<String, dynamic> json) =>
      _$ProfileIdResponseFromJson(json);
}

@freezed
class ProfileResponse with _$ProfileResponse {
  const ProfileResponse._();
  const factory ProfileResponse({
    required String id,
    required String username,
    required String name,
    required String mainImageURL,
    String? secondImageURL,
    String? thirdImageURL,
    String? fourthImageURL,
    String? fifthImageURL,
    String? sixthImageURL,
    @GenderConverter() required Gender gender,
    int? height,
    @DrinkFrequencyConverter() DrinkFrequency? drinkFrequency,
    @CigaretteFrequencyConverter() CigaretteFrequency? cigaretteFrequency,
    String? selfIntroduction,
    String? occupation,
    required Address address,
    required List<Tag> tags,
  }) = _ProfileResponse;

  String? _httpUrl(String? url) {
    if (url == null) return null;
    return ImageConverter.convertHttpsToHttp(url);
  }

  /// プロフィール画像のURLのリストを返す
  List<String> images() => [
        _httpUrl(mainImageURL),
        _httpUrl(secondImageURL),
        _httpUrl(thirdImageURL),
        _httpUrl(fourthImageURL),
        _httpUrl(fifthImageURL),
        _httpUrl(sixthImageURL),
      ].whereType<String>().toList();

  factory ProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$ProfileResponseFromJson(json);
}

@freezed
class ProfileFiles with _$ProfileFiles {
  ProfileFiles._();
  factory ProfileFiles({
    required String mainImage,
    String? secondImage,
    String? thirdImage,
    String? fourthImage,
    String? fifthImage,
    String? sixthImage,
  }) = _ProfileFiles;

  factory ProfileFiles.base64List(List<String> images) {
    String mainImage;
    String? secondImage;
    String? thirdImage;
    String? fourthImage;
    String? fifthImage;
    String? sixthImage;

    mainImage = images[0];
    if (images.length > 1) secondImage = images[1];
    if (images.length > 2) thirdImage = images[2];
    if (images.length > 3) fourthImage = images[3];
    if (images.length > 4) fifthImage = images[4];
    if (images.length > 5) sixthImage = images[5];

    return ProfileFiles(
      mainImage: mainImage,
      secondImage: secondImage,
      thirdImage: thirdImage,
      fourthImage: fourthImage,
      fifthImage: fifthImage,
      sixthImage: sixthImage,
    );
  }

  factory ProfileFiles.fromJson(Map<String, dynamic> json) =>
      _$ProfileFilesFromJson(json);
}
