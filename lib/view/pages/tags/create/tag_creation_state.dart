import 'package:freezed_annotation/freezed_annotation.dart';

part 'tag_creation_state.freezed.dart';

@freezed
class TagCreationState with _$TagCreationState {
  const factory TagCreationState({
    String? name,
    String? description,
  }) = _TagCreationState;
}
