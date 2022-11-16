import 'package:freezed_annotation/freezed_annotation.dart';

part 'room_create_state.freezed.dart';

@freezed
class RoomCreateState with _$RoomCreateState {
  const factory RoomCreateState({
    @Default("") String test,
  }) = _RoomCreateState;
}
