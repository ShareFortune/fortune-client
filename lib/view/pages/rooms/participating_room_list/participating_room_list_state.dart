import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'participating_room_list_state.freezed.dart';

@freezed
class ParticipatingRoomListState<T> with _$ParticipatingRoomListState {
  const factory ParticipatingRoomListState(
    AsyncValue<List<T>> rooms,
  ) = _ParticipatingRoomListState;
}
