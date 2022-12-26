import 'package:fortune_client/data/datasource/remote/go/rooms/rooms_data_source.dart';
import 'package:fortune_client/data/model/host_room/host_room.dart';
import 'package:fortune_client/data/model/room/room.dart';
import 'package:fortune_client/data/model/room_detail/room_detail.dart';
import 'package:fortune_client/data/repository/room/room_repository.dart';
import 'package:fortune_client/util/logger.dart';

const token =
    "Bearer eyJhbGciOiJSUzI1NiIsImtpZCI6Ijk1MWMwOGM1MTZhZTM1MmI4OWU0ZDJlMGUxNDA5NmY3MzQ5NDJhODciLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL3NlY3VyZXRva2VuLmdvb2dsZS5jb20vc2hhcmVmb3J0dW5lLWNkZTdhIiwiYXVkIjoic2hhcmVmb3J0dW5lLWNkZTdhIiwiYXV0aF90aW1lIjoxNjcwMjU0MjQ3LCJ1c2VyX2lkIjoiSndvUGdBVjZ3NFJRR2tkRG1TV3ppQ0Ixa1V1MSIsInN1YiI6Ikp3b1BnQVY2dzRSUUdrZERtU1d6aUNCMWtVdTEiLCJpYXQiOjE2NzAyNTQyNDcsImV4cCI6MTY3MDI1Nzg0NywiZW1haWwiOiJrb3N1a2UudGFuaWd1Y2hpQG1haWwuY29tIiwiZW1haWxfdmVyaWZpZWQiOmZhbHNlLCJmaXJlYmFzZSI6eyJpZGVudGl0aWVzIjp7ImVtYWlsIjpbImtvc3VrZS50YW5pZ3VjaGlAbWFpbC5jb20iXX0sInNpZ25faW5fcHJvdmlkZXIiOiJwYXNzd29yZCJ9fQ.Mx00xVN1Ik_3OGNAlw3M683RyyaTfLpusxhGkhV8QjbtyHy3e1zaFptzMetUoVa6L2xbOzg09wA71Canx9lC7hc1zNYLXG_vZUcAwCOiPyB8IdGiOVL84esKUo-WmMhMLGEgKP40Vq7d90W1ccfr7qOk3RC1fPOGRjIK28aKkAUsbI8v9-H8KsmDqKyJz5CK30-cMJeu11McRjinqwVdrAgYSBHvZBoZQ2zHidzGjEHZM3pFqco01gMDW41tmoyGoiRy555_kFqGM078tD2kUgAxr6Q_NoX0t1na-sSmh4Y49fQAZg0l4pTBmx4I8sWlCNshHgqXBGg9SD4k0T-4JA";

class RoomRepositoryImpl implements RoomRepository {
  final RoomsDataSource _roomsDataSource;

  RoomRepositoryImpl(this._roomsDataSource);

  @override
  Future<String> create() {
    // TODO: implement update
    throw UnimplementedError();
  }

  @override
  Future<String> update() {
    // TODO: implement update
    throw UnimplementedError();
  }

  @override
  Future<List<Room>> fetchList() async {
    try {
      final result =
          await _roomsDataSource.getRooms(null, null, null, null, null);
      return result.roomsEntity;
    } catch (e) {
      logger.e(e);
      rethrow;
    }
  }

  @override
  Future<List<HostRoom>> fetchListHost() async {
    try {
      final result = await _roomsDataSource.getHostList();
      return result.roomsEntity;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<RoomDetail> fetchDetail() async {
    try {
      final _result = await _roomsDataSource
          .getDetail("df08f3f8-1f32-477d-947c-4bc8b6ae4f58");
      print(_result);
      return _result;
    } catch (e) {
      print(e.toString());
      rethrow;
    }
  }
}
