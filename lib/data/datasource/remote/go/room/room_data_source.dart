import 'package:dio/dio.dart';
import 'package:fortune_client/data/model/host_room/host_room.dart';
import 'package:fortune_client/data/model/room_list/room_list.dart';
import 'package:retrofit/http.dart';

part 'room_data_source.g.dart';

@RestApi(baseUrl: 'http://api.fortune-dev.net:8080/api/v1')
abstract class RoomDataSource {
  factory RoomDataSource(Dio dio, {String baseUrl}) = _RoomDataSource;

  @GET('/rooms')
  Future<RoomList> getList();

  @GET('/rooms/host')
  Future<HostRoomList> getHostList();
}
