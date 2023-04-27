import 'package:fortune_client/data/datasource/remote/go/rooms/rooms_data_source.dart';
import 'package:fortune_client/data/model/rooms/room_detail/room_detail.dart';
import 'package:fortune_client/data/model/rooms/room_id_response/room_id_response.dart';
import 'package:fortune_client/data/model/rooms/get_v1_rooms_host/get_v1_rooms_host.dart';
import 'package:fortune_client/data/model/rooms/get_v1_rooms_guest/get_v1_rooms_guest.dart';
import 'package:fortune_client/data/model/rooms/rooms/rooms.dart';
import 'package:fortune_client/gen/assets.gen.dart';
import 'package:fortune_client/util/common/json_utils.dart';

class FakeRoomsDataSource implements RoomsDataSource {
  @override
  Future<RoomIdResponse> create(Map<String, dynamic> body) {
    // TODO: implement create
    throw UnimplementedError();
  }

  @override
  Future<RoomDetail> getDetail(String id) async {
    return RoomDetail.fromJson(
      await JsonUtils.load(Assets.stub.roomsResponseRoom),
    );
  }

  @override
  Future<GetV1RoomsGuestResponse> getRoomsGuest({
    String? nextToken,
    int? perPage,
  }) async {
    return GetV1RoomsGuestResponse.fromJson(
      await JsonUtils.load(Assets.stub.roomsGuestResponse),
    );
  }

  @override
  Future<GetV1RoomsHostResponse> getRoomsHost({
    String? nextToken,
    int? perPage,
  }) async {
    return GetV1RoomsHostResponse.fromJson(
      await JsonUtils.load(Assets.stub.roomsHostResponse),
    );
  }

  @override
  Future<Rooms> fetchList({
    String? addressId,
    String? applicationDeadline,
    int? memberNum,
    List<String>? tagIds,
    String? nextToken,
    int? perPage,
  }) async {
    return Rooms.fromJson(await JsonUtils.load(Assets.stub.roomsResponse));
  }

  @override
  Future<RoomIdResponse> update(
    String id,
    Map<String, dynamic> body,
  ) async {
    return RoomIdResponse(id: id);
  }
}
