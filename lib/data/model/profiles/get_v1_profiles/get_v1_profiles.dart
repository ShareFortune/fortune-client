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
abstract class GetV1ProfilesResponse with _$GetV1ProfilesResponse {
  const factory GetV1ProfilesResponse({
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
  }) = _GetV1ProfilesResponse;

  factory GetV1ProfilesResponse.fromJson(Map<String, dynamic> json) =>
      _$GetV1ProfilesResponseFromJson(json);
}
