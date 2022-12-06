import 'package:fortune_client/data/datasource/core/stub_loader.dart';
import 'package:fortune_client/data/datasource/remote/go/rooms/rooms_data_source.dart';
import 'package:fortune_client/data/model/host_room/host_room.dart';
import 'package:fortune_client/data/model/room_list/room_list.dart';
import 'package:fortune_client/gen/assets.gen.dart';

class StubRoomDataSource extends StubLoader implements RoomsDataSource {
  @override
  Future<RoomList> getRooms(
    String? addressId,
    String? applicationDeadline,
    int? memberNum,
    String? nextToken,
    int? perPage,
  ) async {
    return getEntity(RoomList.fromJson, Assets.stub.roomList);
  }

  @override
  Future<HostRoomList> getHostList() async {
    return getEntity(HostRoomList.fromJson, Assets.stub.participatingRoomList);
  }
}
