import 'package:fortune_client/data/datasource/remote/go/core/stub_loader.dart';
import 'package:fortune_client/data/datasource/remote/go/room/room_data_source.dart';
import 'package:fortune_client/data/model/host_room/host_room.dart';
import 'package:fortune_client/data/model/room_list/room_list.dart';
import 'package:fortune_client/gen/assets.gen.dart';

class StubRoomDataSource extends StubLoader implements RoomDataSource {
  @override
  Future<RoomList> getList() async {
    return getEntity(RoomList.fromJson, Assets.stub.roomList);
  }

  @override
  Future<HostRoomList> getHostList() async {
    return getEntity(HostRoomList.fromJson, Assets.stub.participatingRoomList);
  }
}