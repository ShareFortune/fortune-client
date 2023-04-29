import 'package:fortune_client/data/model/rooms/room_detail/room_detail.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'room_detail_state.freezed.dart';

@freezed
class RoomDetailState with _$RoomDetailState {
  const factory RoomDetailState({
    required RoomDetail detail,
  }) = _RoomDetailState;
}
