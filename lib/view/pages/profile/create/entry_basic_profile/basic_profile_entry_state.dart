import 'package:fortune_client/view/pages/profile/profile/gender_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'basic_profile_entry_state.freezed.dart';

@freezed
class BasicProfileEntryState with _$BasicProfileEntryState {
  const BasicProfileEntryState._();
  const factory BasicProfileEntryState({
    @Default("") String name,
    @Default(GenderType.unknown) GenderType gender,
    @Default("") String adress,
  }) = _BasicProfileEntryState;

  bool isEntered() {
    return name.isNotEmpty && adress.isNotEmpty && gender != GenderType.unknown;
  }
}
