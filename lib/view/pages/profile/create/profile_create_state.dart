import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_create_state.freezed.dart';

@freezed
class ProfileCreateState with _$ProfileCreateState {
  const factory ProfileCreateState({
    @Default("") String name,
    @Default("未選択") String gender,
    @Default("東京都") String adress,
    @Default("") String selfIntroduction,
    @Default(160) double height,
    @Default("飲まない") String drinkFrequency,
    @Default("吸わない") String cigaretteFrequency,
    @Default("エンジニア") String occupationID,
    @Default("") String mainImagePath,
    @Default("") String secondImagePath,
    @Default("") String thirdImagePath,
    @Default("") String fourthImagePath,
    @Default("") String fifthImagePath,
    @Default("") String sixthImagePath,
  }) = _ProfileCreateState;
}
