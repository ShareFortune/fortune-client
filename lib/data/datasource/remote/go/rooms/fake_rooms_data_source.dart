import 'package:fortune_client/data/datasource/remote/go/rooms/rooms_data_source.dart';
import 'package:fortune_client/data/model/rooms/room_detail/room_detail.dart';
import 'package:fortune_client/data/model/rooms/rooms_guest_response/rooms_guest_response.dart';
import 'package:fortune_client/data/model/rooms/rooms_host_response/rooms_host_response.dart';
import 'package:fortune_client/data/model/rooms/rooms_response/rooms_response.dart';
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
  Future<RoomsHostResponse> getRoomsHost({
    String? nextToken,
    int? perPage,
  }) async {
    return RoomsHostResponse.fromJson(
      await JsonUtils.load(Assets.stub.roomsHostResponse),
    );
  }

  @override
  Future<RoomsGuestResponse> getRoomsGuest({
    String? nextToken,
    int? perPage,
  }) async {
    return RoomsGuestResponse.fromJson(
      await JsonUtils.load(Assets.stub.roomsGuestResponse),
    );
  }

  @override
  Future<RoomsResponse> fetchRooms({
    int? addressId,
    String? applicationDeadline,
    int? memberNum,
    List<String>? tagIds,
    String? nextToken,
    int? perPage,
  }) async {
    return RoomsResponse.fromJson(
      await JsonUtils.load(Assets.stub.roomsResponse),
    );
  }

  @override
  Future<RoomIdResponse> update(
    String id,
    Map<String, dynamic> body,
  ) async {
    return RoomIdResponse(id: id);
  }
}
