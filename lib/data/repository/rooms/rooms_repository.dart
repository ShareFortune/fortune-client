import 'package:fortune_client/data/model/participant/guest/participant_room_as_guest.dart';
import 'package:fortune_client/data/model/participant/host/participant_room_as_host.dart';
import 'package:fortune_client/data/model/room_detail/room_detail.dart';
import 'package:fortune_client/data/model/rooms/rooms.dart';

abstract class RoomsRepository {
  Future<String> create();
  Future<String> update();
  Future<List<Room>> search();
  Future<List<ParticipantRoomAsHost>> getRoomsToParticipateAsHost();
  Future<List<ParticipantRoomAsGuest>> getRoomsToParticipateAsGuest();

  /// 詳細取得
  Future<RoomDetail> fetchDetail(String roomId);
}
