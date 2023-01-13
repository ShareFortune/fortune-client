import 'package:fortune_client/data/datasource/remote/go/rooms/rooms_data_source.dart';
import 'package:fortune_client/data/model/participant/participant_rooms.dart';
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
  Future<RoomDetail> getDetail(String id) async {
    return RoomDetail.fromJson(
      await Json.load(Assets.stub.roomDetail),
    );
  }

  @override
  Future<ParticipantRooms<ParticipantRoomAsHost>> getHost({
    String? nextToken,
    int? perPage,
  }) {
    // TODO: implement host
    throw UnimplementedError();
  }
}
