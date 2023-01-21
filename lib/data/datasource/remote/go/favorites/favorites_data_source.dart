import 'package:dio/dio.dart';
import 'package:fortune_client/data/datasource/core/annotations_headers.dart.dart';
import 'package:fortune_client/data/model/base/id/response_id.dart';
import 'package:retrofit/retrofit.dart';

part 'favorites_data_source.g.dart';

@RestApi()
abstract class FavoritesDataSource {
  factory FavoritesDataSource(Dio dio, {String baseUrl}) = _FavoritesDataSource;

  @POST('/rooms/{id}/favorites')
  @authenticatedRequest
  Future<ResponseID> register(
    @Path('id') String id,
  );

  @DELETE('/rooms/{id}/favorites')
  @authenticatedRequest
  Future<ResponseID> unregister(
    @Path('id') String id,
  );
}
