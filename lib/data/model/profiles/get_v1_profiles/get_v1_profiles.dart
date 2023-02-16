// ignore_for_file: invalid_annotation_target

import 'package:fortune_client/data/model/core/base/address/address.dart';
import 'package:fortune_client/data/model/core/base/tag/tag.dart';
import 'package:fortune_client/data/model/core/enum/cigarette_frequency.dart';
import 'package:fortune_client/data/model/core/enum/drink_frequency.dart';
import 'package:fortune_client/data/model/core/enum/gender.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_v1_profiles.freezed.dart';
part 'get_v1_profiles.g.dart';

@freezed
class GetV1ProfilesResponse with _$GetV1ProfilesResponse {
  factory GetV1ProfilesResponse({
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "username") required String username,
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "mainImageURL") required String mainImageURL,
    @JsonKey(name: "secondImageURL") String? secondImageURL,
    @JsonKey(name: "thirdImageURL") String? thirdImageURL,
    @JsonKey(name: "fourthImageURL") String? fourthImageURL,
    @JsonKey(name: "fifthImageURL") String? fifthImageURL,
    @JsonKey(name: "sixthImageURL") String? sixthImageURL,
    @JsonKey(name: "gender") @GenderConverter() required Gender gender,
    @JsonKey(name: "height") int? height,
    @JsonKey(name: "drinkFrequency")
    @DrinkFrequencyConverter()
        DrinkFrequency? drinkFrequency,
    @JsonKey(name: "cigaretteFrequency")
    @CigaretteFrequencyConverter()
        CigaretteFrequency? cigaretteFrequency,
    @JsonKey(name: "selfIntroduction") String? selfIntroduction,
    @JsonKey(name: "address") required Address address,
    @JsonKey(name: "tags") List<Tag>? tags,
  }) = _GetV1ProfilesResponse;

  factory GetV1ProfilesResponse.fromJson(Map<String, dynamic> json) =>
      _$GetV1ProfilesResponseFromJson(json);
}
