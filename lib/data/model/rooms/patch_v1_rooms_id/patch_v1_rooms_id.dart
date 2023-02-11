// ignore_for_file: invalid_annotation_target

import 'package:fortune_client/data/model/base/profiles_files/profiles_files.dart';
import 'package:fortune_client/data/model/enum/cigarette_frequency.dart';
import 'package:fortune_client/data/model/enum/drink_frequency.dart';
import 'package:fortune_client/data/model/enum/gender.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'patch_v1_rooms_id.freezed.dart';
part 'patch_v1_rooms_id.g.dart';

@freezed
class PatchV1RoomsIdRequest with _$PatchV1RoomsIdRequest {
  factory PatchV1RoomsIdRequest({
    ///
    @JsonKey(name: "name") required String name,

    ///
    @JsonKey(name: "gender") @GenderConverter() required Gender gender,

    ///
    @JsonKey(name: "addressId") required int addressId,

    ///
    @JsonKey(name: "files") required ProfilesFiles files,

    ///
    @JsonKey(name: "height") int? height,

    ///
    @JsonKey(name: "drinkFrequency")
    @DrinkFrequencyConverter()
        DrinkFrequency? drinkFrequency,

    ///
    @JsonKey(name: "cigaretteFrequency")
    @CigaretteFrequencyConverter()
        CigaretteFrequency? cigaretteFrequency,

    ///
    @JsonKey(name: "selfIntroduction") String? selfIntroduction,

    ///
    @JsonKey(name: "occupationId") int? occupationId,

    ///
    @JsonKey(name: "tagIds") List<String>? tagIds,
  }) = _PatchV1RoomsIdRequest;

  factory PatchV1RoomsIdRequest.fromJson(Map<String, dynamic> json) =>
      _$PatchV1RoomsIdRequestFromJson(json);
}
