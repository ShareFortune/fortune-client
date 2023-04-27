import 'package:fortune_client/data/model/rooms/room_detail/room_detail.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'room_detail_state.freezed.dart';

@freezed
class RoomDetailState with _$RoomDetailState {
  const factory RoomDetailState({
    required String roomId,
    required AsyncValue<RoomDetail> detail,
  }) = _RoomDetailState;
}
