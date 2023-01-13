import 'package:fortune_client/data/model/participant/participant_rooms.dart';
import 'package:fortune_client/data/model/room_detail/room_detail.dart';
import 'package:fortune_client/data/model/rooms/rooms.dart';

abstract class RoomsRepository {
  Future<String> create();
  Future<String> update();
  Future<List<Room>> search();
  Future<List<ParticipantRoomAsHost>> fetchHost();

  /// 詳細取得
  Future<RoomDetail> fetchDetail();
}
