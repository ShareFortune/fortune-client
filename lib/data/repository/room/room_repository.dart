import 'package:fortune_client/data/model/host_room/host_room.dart';
import 'package:fortune_client/data/model/room/room.dart';
import 'package:fortune_client/data/model/room_detail/room_detail.dart';

abstract class RoomRepository {
  Future<String> create();
  Future<String> update();
  Future<List<Room>> fetchList();
  Future<List<HostRoom>> fetchListHost();

  /// 詳細取得
  Future<RoomDetail> fetchDetail();
}
