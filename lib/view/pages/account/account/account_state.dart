import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_state.freezed.dart';

@freezed
class AccountState with _$AccountState {
  const factory AccountState({
    @Default("") String icon,
    @Default(5) int recruitmentNum,
    @Default(15) int totalRecruitmentNum,
    @Default(15) int participationNum,
    @Default(15) int likes,
  }) = _AccountState;
}
