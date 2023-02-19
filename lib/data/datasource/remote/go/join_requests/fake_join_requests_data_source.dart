import 'package:fortune_client/data/datasource/remote/go/join_requests/join_requests_data_source.dart';
import 'package:fortune_client/data/model/rooms/room_id_response/room_id_response.dart';
import 'package:fortune_client/data/model/room_join_requests/get_v1_room_join_requests/get_v1_room_join_requests.dart';

class FakeJoinRequestsDataSource implements JoinRequestsDataSource {
  @override
  Future<RoomIdResponse> accept(String requestId) {
    // TODO: implement accept
    throw UnimplementedError();
  }

  @override
  Future<GetV1RoomJoinRequestsResponse> getJoinRequest(String id,
      {String? nextToken, int? perPage}) {
    // TODO: implement getJoinRequest
    throw UnimplementedError();
  }

  @override
  Future<RoomIdResponse> reject(String requestId) {
    // TODO: implement reject
    throw UnimplementedError();
  }

  @override
  Future<RoomIdResponse> sendJoinRequest(String roomId) {
    // TODO: implement sendJoinRequest
    throw UnimplementedError();
  }
}
