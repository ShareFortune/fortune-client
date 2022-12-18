import 'package:freezed_annotation/freezed_annotation.dart';

part 'detailed_profile_entry_state.freezed.dart';

@freezed
class DetailedProfileEntryState with _$DetailedProfileEntryState {
  const DetailedProfileEntryState._();
  const factory DetailedProfileEntryState({
    @Default("") String name,
  }) = _DetailedProfileEntryState;
}
