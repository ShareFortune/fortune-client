import 'package:fortune_client/data/model/enum/cigarette_frequency.dart';
import 'package:fortune_client/data/model/enum/drink_frequency.dart';
import 'package:fortune_client/data/model/enum/gender.dart';
import 'package:fortune_client/data/model/profile/profile_response/profile_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_request.freezed.dart';
part 'profile_request.g.dart';

@freezed
class ProfileCreateRequest with _$ProfileCreateRequest {
  const factory ProfileCreateRequest({
    required Map<String, dynamic> files,
    required String name,
    required String gender,
    int? height,
    @DrinkFrequencyConverter() DrinkFrequency? drinkFrequency,
    @CigaretteFrequencyConverter() CigaretteFrequency? cigaretteFrequency,
    String? selfIntroduction,
    int? occupationId,
    required int addressId,
    List<String>? tagIds,
  }) = _ProfileCreateRequest;

  factory ProfileCreateRequest.fromJson(Map<String, dynamic> json) =>
      _$ProfileCreateRequestFromJson(json);
}

@freezed
class ProfileUpdateRequest with _$ProfileUpdateRequest {
  const factory ProfileUpdateRequest({
    required String name,
    @GenderConverter() required Gender gender,
    required int addressId,
    required ProfileFiles files,
    required int? height,
    @DrinkFrequencyConverter() required DrinkFrequency? drinkFrequency,
    @CigaretteFrequencyConverter()
        required CigaretteFrequency? cigaretteFrequency,
    required String? selfIntroduction,
    required int? occupationId,
    required List<String>? tagIds,
  }) = _ProfileUpdateRequest;

  factory ProfileUpdateRequest.fromJson(Map<String, dynamic> json) =>
      _$ProfileUpdateRequestFromJson(json);
}
