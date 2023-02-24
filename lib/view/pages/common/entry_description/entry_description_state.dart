import 'package:freezed_annotation/freezed_annotation.dart';

part 'entry_description_state.freezed.dart';

@freezed
class EntryDescriptionState with _$EntryDescriptionState {
  const factory EntryDescriptionState({
    String? description,
  }) = _EntryDescriptionState;
}
