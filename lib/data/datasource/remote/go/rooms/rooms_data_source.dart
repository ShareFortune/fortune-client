import 'package:dio/dio.dart';
import 'package:fortune_client/data/model/rooms/room_detail/room_detail.dart';
import 'package:fortune_client/data/model/rooms/rooms_guest_response/rooms_guest_response.dart';
import 'package:fortune_client/data/model/rooms/rooms_host_response/rooms_host_response.dart';
import 'package:fortune_client/data/model/rooms/rooms_response/rooms_response.dart';
import 'package:retrofit/retrofit.dart';
import 'package:fortune_client/data/datasource/core/annotations_headers.dart.dart';

part 'rooms_data_source.g.dart';

@RestApi()
abstract class RoomsDataSource {
  factory RoomsDataSource(Dio dio, {String baseUrl}) = _RoomsDataSource;

  @POST('/rooms')
  @authenticatedRequest
  Future<RoomIdResponse> create(
    @Body() Map<String, dynamic> body,
  );

  @GET('/rooms')
  @authenticatedRequest
  Future<RoomsResponse> fetchRooms({
    @Query("addressId") int? addressId,
    @Query("applicationDeadline") String? applicationDeadline,
    @Query("memberNum") int? memberNum,
    @Query("tagIds") List<String>? tagIds,
    @Query("nextToken") String? nextToken,
    @Query("perPage") int? perPage,
  });

  @GET('/rooms/{id}')
  @authenticatedRequest
  Future<RoomDetail> getDetail(
    @Path('id') String id,
  );

  @GET('/rooms/host')
  @authenticatedRequest
  Future<RoomsHostResponse> getRoomsHost({
    @Query("nextToken") String? nextToken,
    @Query("perPage") int? perPage,
  });

  @GET('/rooms/guest')
  @authenticatedRequest
  Future<RoomsGuestResponse> getRoomsGuest({
    @Query("nextToken") String? nextToken,
    @Query("perPage") int? perPage,
  });

  @GET('/rooms/{id}')
  @authenticatedRequest
  Future<RoomIdResponse> update(
    @Path('id') String id,
    @Body() Map<String, dynamic> body,
  );
}
