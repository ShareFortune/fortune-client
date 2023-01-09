import 'package:dio/dio.dart';
import 'package:fortune_client/data/model/room_detail/room_detail.dart';
import 'package:fortune_client/util/logger/logger.dart';
import 'package:retrofit/retrofit.dart';
import 'package:fortune_client/data/datasource/core/annotations_headers.dart.dart';
import 'package:fortune_client/data/model/host_room/host_room.dart';
import 'package:fortune_client/data/model/room_list/room_list.dart';

part 'rooms_data_source.g.dart';

@RestApi()
abstract class RoomsDataSource {
  factory RoomsDataSource(Dio dio) = _RoomsDataSource;

  @GET('/rooms')
  @authenticatedRequest
  Future<RoomList> getRooms(
      // @Query("addressId") String? addressId,
      // @Query("applicationDeadline") String? applicationDeadline,
      // @Query("memberNum") int? memberNum,
      // @Query("nextToken") String? nextToken,
      // @Query("perPage") int? perPage,
      );

  @GET('/rooms/{id}')
  @authenticatedRequest
  Future<RoomDetail> getDetail(
    @Path('id') String id,
  );

  @GET('/rooms/host')
  Future<HostRoomList> getHostList();
}
