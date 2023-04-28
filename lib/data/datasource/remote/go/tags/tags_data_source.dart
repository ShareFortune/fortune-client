import 'package:dio/dio.dart';
import 'package:fortune_client/data/datasource/core/annotations_headers.dart.dart';
import 'package:fortune_client/data/model/tags/tags_response/tags_response.dart';

import 'package:retrofit/retrofit.dart';

part 'tags_data_source.g.dart';

@RestApi()
abstract class TagsDataSource {
  factory TagsDataSource(Dio dio) = _TagsDataSource;

  @POST('/tags')
  @authenticatedRequest
  Future<TagIdResponse> create(
    @Body() Map<String, dynamic> body,
  );

  @GET('/tags')
  @authenticatedRequest
  Future<TagsResponse> search({
    @Query("name") String? name,
    @Query("nextToken") String? nextToken,
    @Query("perPage") int? perPage,
  });
}
