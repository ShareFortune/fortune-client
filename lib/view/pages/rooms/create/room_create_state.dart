import 'package:freezed_annotation/freezed_annotation.dart';

part 'room_create_state.freezed.dart';

@freezed
class RoomCreateState with _$RoomCreateState {
  const factory RoomCreateState({
    @Default("") String title,
    @Default(4) int membersNum,
    @Default("") String ageGroup,
    @Default("") String address,
    @Default("") String explanation,
    @Default("") String tags,
  }) = _RoomCreateState;
}
