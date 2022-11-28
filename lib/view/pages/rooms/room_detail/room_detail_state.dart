import 'package:fortune_client/data/model/room/room.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'room_detail_state.freezed.dart';

@freezed
class RoomDetailState with _$RoomDetailState {
  const factory RoomDetailState({
    @Default("") String title,
    @Default("") String hostIcon,
    @Default("") String explanation,
    @Default([]) List tags,
    @Default([]) List members,
  }) = _RoomDetailState;
}
