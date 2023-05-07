import 'package:fortune_client/data/model/enum/age_group.dart';
import 'package:fortune_client/data/model/enum/cigarette_frequency.dart';
import 'package:fortune_client/data/model/enum/drink_frequency.dart';
import 'package:fortune_client/data/model/enum/gender.dart';
import 'package:fortune_client/data/model/profile/profile_response/profile_response.dart';
import 'package:fortune_client/data/model/tags/tag/tag.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'rooms_request.freezed.dart';
part 'rooms_request.g.dart';

@freezed
class RoomsCreateRequest with _$RoomsCreateRequest {
  factory RoomsCreateRequest({
    required String roomName,
    required String applicationDeadline,
    required int membersNum,
    @AgeGroupConverter() required AgeGroup ageGroup,
    required int addressId,
    required String explanation,
    List<Tag>? tagIds,
  }) = _RoomsCreateRequest;

  factory RoomsCreateRequest.fromJson(Map<String, dynamic> json) =>
      _$RoomsCreateRequestFromJson(json);
}

@freezed
class RoomsUpdateRequest with _$RoomsUpdateRequest {
  factory RoomsUpdateRequest({
    required String name,
    @GenderConverter() required Gender gender,
    required int addressId,
    required ProfileFiles files,
    int? height,
    @DrinkFrequencyConverter() DrinkFrequency? drinkFrequency,
    @CigaretteFrequencyConverter() CigaretteFrequency? cigaretteFrequency,
    String? selfIntroduction,
    int? occupationId,
    List<String>? tagIds,
  }) = _RoomsUpdateRequest;

  factory RoomsUpdateRequest.fromJson(Map<String, dynamic> json) =>
      _$RoomsUpdateRequestFromJson(json);
}
