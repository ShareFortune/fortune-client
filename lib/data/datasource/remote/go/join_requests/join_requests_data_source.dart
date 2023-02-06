import 'package:dio/dio.dart';
import 'package:fortune_client/data/datasource/core/annotations_headers.dart.dart';
import 'package:fortune_client/data/model/room_join_requests/get_v1_room_join_requests/get_v1_room_join_requests.dart';
import 'package:fortune_client/data/model/rooms/room_id_response/room_id_response.dart';
import 'package:retrofit/retrofit.dart';

part 'join_requests_data_source.g.dart';

@RestApi()
abstract class JoinRequestsDataSource {
  factory JoinRequestsDataSource(Dio dio, {String baseUrl}) =
      _JoinRequestsDataSource;

  /// 参加リクエスト
  @POST('/rooms/{roomId}/roomJoinRequests')
  @authenticatedRequest
  Future<RoomIdResponse> sendJoinRequest(
    @Path('roomId') String roomId,
  );

  /// 受信した参加リクエスト結果を取得
  @GET('/rooms/{id}/roomJoinRequests')
  @authenticatedRequest
  Future<GetV1RoomJoinRequestsResponse> getJoinRequest(
    @Path('id') String id, {
    @Query("nextToken") String? nextToken,
    @Query("perPage") int? perPage,
  });

  /// 参加リクエストを許可
  @PATCH('/roomJoinRequests/{requestId}/accept')
  @authenticatedRequest
  Future<RoomIdResponse> accept(
    @Path('requestId') String requestId,
  );

  /// 参加リクエストを拒否
  @PATCH('/roomJoinRequests/{requestId}/reject')
  @authenticatedRequest
  Future<RoomIdResponse> reject(
    @Path('requestId') String requestId,
  );
}
