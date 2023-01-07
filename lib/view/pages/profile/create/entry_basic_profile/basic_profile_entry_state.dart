import 'package:fortune_client/data/model/enum/gender_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'basic_profile_entry_state.freezed.dart';

@freezed
class BasicProfileEntryState with _$BasicProfileEntryState {
  const BasicProfileEntryState._();
  const factory BasicProfileEntryState({
    @Default("") String name,
    @Default(GenderType.another) GenderType gender,
    DateTime? birthday,
  }) = _BasicProfileEntryState;

  bool isEntered() {
    return name.isNotEmpty && birthday != null && gender != GenderType.another;
  }
}
