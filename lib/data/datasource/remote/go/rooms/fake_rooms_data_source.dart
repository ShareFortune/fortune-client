import 'package:fortune_client/data/datasource/remote/go/rooms/rooms_data_source.dart';
import 'package:fortune_client/data/model/host_room/host_room.dart';
import 'package:fortune_client/data/model/room_detail/room_detail.dart';
import 'package:fortune_client/data/model/rooms/rooms.dart';
import 'package:fortune_client/gen/assets.gen.dart';
import 'package:fortune_client/util/common/json_roader.dart';

class FakeRoomDataSource implements RoomsDataSource {
  @override
  Future<Rooms> search({
    String? addressId,
    String? applicationDeadline,
    int? memberNum,
    List<String>? tagIds,
    String? nextToken,
    int? perPage,
  }) async {
    return Rooms.fromJson(
      await Json.load(Assets.stub.roomList),
    );
  }

  @override
  Future<HostRoomList> getHostList() async {
    return HostRoomList.fromJson(
      await Json.load(Assets.stub.participatingRoomList),
    );
  }

  @override
  Future<RoomDetail> getDetail(String id) async {
    return RoomDetail.fromJson(
      await Json.load(Assets.stub.roomDetail),
    );
  }
}
