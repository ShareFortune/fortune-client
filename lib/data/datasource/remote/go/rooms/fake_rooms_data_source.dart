import 'package:fortune_client/data/datasource/remote/go/rooms/rooms_data_source.dart';
import 'package:fortune_client/data/model/rooms/get_v1_rooms/get_v1_rooms.dart';
import 'package:fortune_client/data/model/rooms/room_id_response/room_id_response.dart';
import 'package:fortune_client/data/model/rooms/get_v1_rooms_host/get_v1_rooms_host.dart';
import 'package:fortune_client/data/model/rooms/get_v1_rooms_guest/get_v1_rooms_guest.dart';
import 'package:fortune_client/data/model/core/base/room/room.dart';
import 'package:fortune_client/gen/assets.gen.dart';
import 'package:fortune_client/util/common/json_loader.dart';

class FakeRoomsDataSource implements RoomsDataSource {
  @override
  Future<RoomIdResponse> create(Map<String, dynamic> body) {
    // TODO: implement create
    throw UnimplementedError();
  }

  @override
  Future<Room> getDetail(String id) {
    // TODO: implement getDetail
    throw UnimplementedError();
  }

  @override
  Future<GetV1RoomsGuestResponse> getRoomsGuest({
    String? nextToken,
    int? perPage,
  }) async {
    return GetV1RoomsGuestResponse.fromJson(
      await JsonLoader.load(Assets.stub.getV1RoomsGuestResponse),
    );
  }

  @override
  Future<GetV1RoomsHostResponse> getRoomsHost({
    String? nextToken,
    int? perPage,
  }) async {
    return GetV1RoomsHostResponse.fromJson(
      await JsonLoader.load(Assets.stub.getV1RoomsHostResponse),
    );
  }

  @override
  Future<GetV1RoomsResponse> fetchList({
    String? addressId,
    String? applicationDeadline,
    int? memberNum,
    List<String>? tagIds,
    String? nextToken,
    int? perPage,
  }) async {
    return GetV1RoomsResponse.fromJson(
      await JsonLoader.load(Assets.stub.getV1RoomsResponse),
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
