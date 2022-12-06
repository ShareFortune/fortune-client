import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:fortune_client/data/datasource/core/annotations_headers.dart.dart';
import 'package:fortune_client/data/model/host_room/host_room.dart';
import 'package:fortune_client/data/model/room_list/room_list.dart';

part 'room_data_source.g.dart';

@RestApi()
abstract class RoomDataSource {
  factory RoomDataSource(Dio dio) = _RoomDataSource;

  @GET('/rooms')
  @authenticatedRequest
  Future<RoomList> getRooms();

  @GET('/rooms/host')
  Future<HostRoomList> getHostList();
}
