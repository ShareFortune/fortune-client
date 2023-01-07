import 'package:dio/dio.dart';
import 'package:fortune_client/data/datasource/core/annotations_headers.dart.dart';
import 'package:fortune_client/data/model/tag/tag.dart';
import 'package:retrofit/retrofit.dart';

part 'tags_data_source.g.dart';

@RestApi()
abstract class TagsDataSource {
  factory TagsDataSource(Dio dio) = _TagsDataSource;

  @GET('/tags')
  @authenticatedRequest
  Future<Tags<Tag>> search(
    @Query("name") String? name,
    @Query("nextToken") String? nextToken,
    @Query("perPage") int? perPage,
  );
}
