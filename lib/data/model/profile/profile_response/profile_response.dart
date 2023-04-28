import 'package:fortune_client/data/model/addresses/address/address.dart';
import 'package:fortune_client/data/model/enum/cigarette_frequency.dart';
import 'package:fortune_client/data/model/enum/drink_frequency.dart';
import 'package:fortune_client/data/model/enum/gender.dart';
import 'package:fortune_client/data/model/tags/tag/tag.dart';
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

  /// プロフィール画像のURLのリストを返す
  List<String> images() => [
        mainImageURL,
        secondImageURL,
        thirdImageURL,
        fourthImageURL,
        fifthImageURL,
        sixthImageURL,
      ].whereType<String>().toList();

  factory ProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$ProfileResponseFromJson(json);
}

@freezed
class ProfileFiles with _$ProfileFiles {
  factory ProfileFiles({
    required String mainImage,
    String? secondImage,
    String? thirdImage,
    String? fourthImage,
    String? fifthImage,
    String? sixthImage,
  }) = _ProfileFiles;

  factory ProfileFiles.fromJson(Map<String, dynamic> json) =>
      _$ProfileFilesFromJson(json);
}
