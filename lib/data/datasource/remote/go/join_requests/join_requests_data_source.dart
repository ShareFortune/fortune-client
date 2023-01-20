import 'package:dio/dio.dart';
import 'package:fortune_client/data/datasource/core/annotations_headers.dart.dart';
import 'package:retrofit/retrofit.dart';

part 'join_requests_data_source.g.dart';

@RestApi()
abstract class JoinRequestsDataSource {
  factory JoinRequestsDataSource(Dio dio, {String baseUrl}) =
      _JoinRequestsDataSource;

  @POST('/rooms/{id}/roomJoinRequests')
  @authenticatedRequest
  Future<String> sendJoinRequest(
    @Path('id') String id,
  );
}
