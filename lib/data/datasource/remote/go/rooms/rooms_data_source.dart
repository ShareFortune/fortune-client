import 'package:dio/dio.dart';
import 'package:fortune_client/data/model/participant/participant_rooms.dart';
import 'package:fortune_client/data/model/room_detail/room_detail.dart';
import 'package:fortune_client/data/model/rooms/rooms.dart';
import 'package:retrofit/retrofit.dart';
import 'package:fortune_client/data/datasource/core/annotations_headers.dart.dart';

part 'rooms_data_source.g.dart';

@RestApi()
abstract class RoomsDataSource {
  factory RoomsDataSource(Dio dio, {String baseUrl}) = _RoomsDataSource;

  @GET('/rooms')
  @authenticatedRequest
  Future<Rooms> search({
    @Query("addressId") String? addressId,
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
  Future<ParticipantRooms<ParticipantRoomAsHost>> getHost({
    @Query("nextToken") String? nextToken,
    @Query("perPage") int? perPage,
  });
}
