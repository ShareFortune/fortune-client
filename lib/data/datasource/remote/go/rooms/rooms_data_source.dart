import 'package:dio/dio.dart';
import 'package:fortune_client/data/model/base/room/room.dart';
import 'package:fortune_client/data/model/rooms/get_v1_rooms/get_v1_rooms.dart';
import 'package:fortune_client/data/model/rooms/get_v1_rooms_guest/get_v1_rooms_guest.dart';
import 'package:fortune_client/data/model/rooms/get_v1_rooms_host/get_v1_rooms_host.dart';
import 'package:fortune_client/data/model/rooms/get_v1_rooms_search/get_v1_rooms_search.dart';
import 'package:fortune_client/data/model/rooms/room_id_response/room_id_response.dart';
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
  Future<GetV1RoomsResponse> fetchList({
    @Query("addressId") String? addressId,
    @Query("applicationDeadline") String? applicationDeadline,
    @Query("memberNum") int? memberNum,
    @Query("tagIds") List<String>? tagIds,
    @Query("nextToken") String? nextToken,
    @Query("perPage") int? perPage,
  });

  @GET('/rooms/{id}')
  @authenticatedRequest
  Future<Room> getDetail(
    @Path('id') String id,
  );

  @GET('/rooms/host')
  @authenticatedRequest
  Future<GetV1RoomsHostResponse> getRoomsHost({
    @Query("nextToken") String? nextToken,
    @Query("perPage") int? perPage,
  });

  @GET('/rooms/guest')
  @authenticatedRequest
  Future<GetV1RoomsGuestResponse> getRoomsGuest({
    @Query("nextToken") String? nextToken,
    @Query("perPage") int? perPage,
  });
}
