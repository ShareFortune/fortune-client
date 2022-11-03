import 'package:fortune_client/domain/entities/models/room/room.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'room_detail_state.freezed.dart';

@freezed
class RoomDetailState with _$RoomDetailState {
  const factory RoomDetailState({
    required Room room,
  }) = _RoomDetailState;
}
