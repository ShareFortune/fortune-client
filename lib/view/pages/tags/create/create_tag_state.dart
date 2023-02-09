import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_tag_state.freezed.dart';

@freezed
class CreateTagState with _$CreateTagState {
  const factory CreateTagState({
    String? name,
    String? description,
  }) = _CreateTagState;
}
