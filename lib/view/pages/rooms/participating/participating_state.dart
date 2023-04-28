import 'package:fortune_client/data/model/rooms/rooms_guest_response/rooms_guest_response.dart';
import 'package:fortune_client/data/model/rooms/rooms_host_response/rooms_host_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'participating_state.freezed.dart';

typedef RoomList<T> = AsyncValue<List<T>>;

@freezed
class ParticipatingState with _$ParticipatingState {
  const factory ParticipatingState({
    required RoomList<RoomsHostResponseRoom> host,
    required RoomList<RoomsGuestResponseRoom> guest,
  }) = _ParticipatingState;
}
