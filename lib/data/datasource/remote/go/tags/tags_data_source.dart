import 'package:dio/dio.dart';
import 'package:fortune_client/data/datasource/core/annotations_headers.dart.dart';
import 'package:fortune_client/data/model/tags/get_v1_tags/get_v1_tags.dart';
import 'package:fortune_client/data/model/tags/post_v1_tags/post_v1_tags.dart';

import 'package:retrofit/retrofit.dart';

part 'tags_data_source.g.dart';

@RestApi()
abstract class TagsDataSource {
  factory TagsDataSource(Dio dio, {String baseUrl}) = _TagsDataSource;

  @POST('/tags')
  @authenticatedRequest
  Future<PostV1TagsResponse> create(
    @Body() Map<String, dynamic> body,
  );

  @GET('/tags')
  @authenticatedRequest
  Future<GetV1TagsResponse> search({
    @Query("name") String? name,
    @Query("nextToken") String? nextToken,
    @Query("perPage") int? perPage,
  });
}
