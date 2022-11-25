import 'package:dio/dio.dart';
import 'package:fortune_client/data/model/room/room.dart';
import 'package:retrofit/http.dart';

part 'room_data_source.g.dart';

@RestApi(baseUrl: 'http://api.fortune-dev.net:8080/api/v1')
abstract class RoomDataSource {
  factory RoomDataSource(Dio dio, {String baseUrl}) = _RoomDataSource;

  @GET('/rooms')
  Future<List<Room>> getList();
}
