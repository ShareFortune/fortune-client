import 'package:dio/dio.dart';
import 'package:fortune_client/data/datasource/remote/go/core/header.dart';
import 'package:fortune_client/data/model/host_room/host_room.dart';
import 'package:fortune_client/data/model/room_list/room_list.dart';
import 'package:retrofit/http.dart';

part 'room_data_source.g.dart';

@RestApi()
abstract class RoomDataSource {
  factory RoomDataSource(Dio dio) = _RoomDataSource;

  @GET('/rooms')
  Future<RoomList> getList(
    @authorization String token,
  );

  @GET('/rooms/host')
  Future<HostRoomList> getHostList();
}
