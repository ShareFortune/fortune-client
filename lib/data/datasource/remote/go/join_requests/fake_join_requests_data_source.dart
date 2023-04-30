import 'package:fortune_client/data/datasource/remote/go/join_requests/join_requests_data_source.dart';
import 'package:fortune_client/data/model/join_requests/join_requests_response/join_requests_response.dart';
import 'package:fortune_client/data/model/rooms/rooms_response/rooms_response.dart';
import 'package:fortune_client/gen/assets.gen.dart';
import 'package:fortune_client/util/common/json_utils.dart';

class FakeJoinRequestsDataSource implements JoinRequestsDataSource {
  final ids = [];

  @override
  Future<JoinRequestsResponse> getJoinRequest(
    String id, {
    String? nextToken,
    int? perPage,
  }) async {
    final result = JoinRequestsResponse.fromJson(
      await JsonUtils.load(Assets.stub.joinRequestsResponse),
    );
    return result.copyWith(
      joinRequests: result.joinRequests
          .where((joinRequest) => !ids.contains(joinRequest.id))
          .toList(),
    );
  }

  @override
  Future<RoomIdResponse> accept(String requestId) async {
    ids.add(requestId);
    return const RoomIdResponse(id: '');
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
