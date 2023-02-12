import 'package:fortune_client/data/model/rooms/get_v1_rooms_guest/get_v1_rooms_guest.dart';
import 'package:fortune_client/data/model/rooms/get_v1_rooms_host/get_v1_rooms_host.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'participating_state.freezed.dart';

@freezed
class ParticipatingState with _$ParticipatingState {
  const factory ParticipatingState(
    AsyncValue<List<GetV1RoomsHostResponseRoom>> host,
    AsyncValue<List<GetV1RoomsGuestResponseRoom>> guest,
  ) = _ParticipatingState;
}
