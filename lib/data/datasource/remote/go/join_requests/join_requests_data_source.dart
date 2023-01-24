import 'package:dio/dio.dart';
import 'package:fortune_client/data/datasource/core/annotations_headers.dart.dart';
import 'package:fortune_client/data/model/base/id/response_id.dart';
import 'package:fortune_client/data/model/join_requests/join_requests.dart';
import 'package:retrofit/retrofit.dart';

part 'join_requests_data_source.g.dart';

@RestApi()
abstract class JoinRequestsDataSource {
  factory JoinRequestsDataSource(Dio dio, {String baseUrl}) =
      _JoinRequestsDataSource;

  @POST('/rooms/{id}/roomJoinRequests')
  @authenticatedRequest
  Future<ResponseID> sendJoinRequest(
    @Path('id') String id,
  );

  /// 受信した参加リクエスト結果を取得
  @GET('/rooms/{id}/roomJoinRequests')
  @authenticatedRequest
  Future<JoinRequestsResponse> getResultOfIncomingJoinRequests(
    @Path('id') String id, {
    @Query("nextToken") String? nextToken,
    @Query("perPage") int? perPage,
  });
}
