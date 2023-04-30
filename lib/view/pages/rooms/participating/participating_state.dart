import 'package:fortune_client/data/model/rooms/rooms_guest_response/rooms_guest_response.dart';
import 'package:fortune_client/data/model/rooms/rooms_host_response/rooms_host_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'participating_state.freezed.dart';

@freezed
class ParticipatingState with _$ParticipatingState {
  const factory ParticipatingState({
    required List<RoomsHostResponseRoom> host,
    required List<RoomsGuestResponseRoom> guest,
  }) = _ParticipatingState;
}
