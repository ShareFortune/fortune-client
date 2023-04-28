import 'package:fortune_client/data/datasource/remote/go/join_requests/join_requests_data_source.dart';
import 'package:fortune_client/data/model/join_requests/join_requests_response/join_requests_response.dart';
import 'package:fortune_client/data/model/rooms/rooms_response/rooms_response.dart';

class FakeJoinRequestsDataSource implements JoinRequestsDataSource {
  @override
  Future<RoomIdResponse> accept(String requestId) {
    // TODO: implement accept
    throw UnimplementedError();
  }

  @override
  Future<JoinRequestsResponse> getJoinRequest(String id,
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
