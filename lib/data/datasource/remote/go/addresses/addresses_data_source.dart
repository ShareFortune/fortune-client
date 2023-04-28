import 'package:dio/dio.dart';
import 'package:fortune_client/data/datasource/core/annotations_headers.dart.dart';
import 'package:fortune_client/data/model/addresses/addresses_response/addresses_response.dart';
import 'package:retrofit/retrofit.dart';

part 'addresses_data_source.g.dart';

@RestApi()
abstract class AddressesDataSource {
  factory AddressesDataSource(Dio dio, {String baseUrl}) = _AddressesDataSource;

  @GET('/addresses')
  @authenticatedRequest
  Future<AddressesResponse> search({
    @Query("city") String? city,
  });
}
