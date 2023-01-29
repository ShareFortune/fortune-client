import 'package:fortune_client/data/datasource/remote/go/rooms/rooms_data_source.dart';
import 'package:fortune_client/data/model/rooms/room_id_response/room_id_response.dart';
import 'package:fortune_client/data/model/rooms/get_v1_rooms_search/get_v1_rooms_search.dart';
import 'package:fortune_client/data/model/rooms/get_v1_rooms_host/get_v1_rooms_host.dart';
import 'package:fortune_client/data/model/rooms/get_v1_rooms_guest/get_v1_rooms_guest.dart';
import 'package:fortune_client/data/model/base/room/room.dart';

class FakeRoomDataSource implements RoomsDataSource {
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
  Future<GetV1RoomsGuestResponse> getRoomsGuest(
      {String? nextToken, int? perPage}) {
    // TODO: implement getRoomsGuest
    throw UnimplementedError();
  }

  @override
  Future<GetV1RoomsHostResponse> getRoomsHost(
      {String? nextToken, int? perPage}) {
    // TODO: implement getRoomsHost
    throw UnimplementedError();
  }

  @override
  Future<GetV1RoomsSearchResponse> search(
      {String? addressId,
      String? applicationDeadline,
      int? memberNum,
      List<String>? tagIds,
      String? nextToken,
      int? perPage}) {
    // TODO: implement search
    throw UnimplementedError();
  }
}
