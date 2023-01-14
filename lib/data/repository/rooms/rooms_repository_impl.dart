import 'package:fortune_client/data/datasource/remote/go/rooms/rooms_data_source.dart';
import 'package:fortune_client/data/model/participant/base/participant_rooms.dart';
import 'package:fortune_client/data/model/participant/guest/participant_room_as_guest.dart';
import 'package:fortune_client/data/model/participant/host/participant_room_as_host.dart';
import 'package:fortune_client/data/model/room_detail/room_detail.dart';
import 'package:fortune_client/data/model/rooms/rooms.dart';
import 'package:fortune_client/data/repository/rooms/rooms_repository.dart';
import 'package:fortune_client/util/logger/logger.dart';

class RoomsRepositoryImpl implements RoomsRepository {
  final RoomsDataSource _roomsDataSource;

  RoomsRepositoryImpl(this._roomsDataSource);

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
  Future<List<Room>> search() async {
    try {
      logger.i("$runtimeType fetchList");
      final result = await _roomsDataSource.search(perPage: 10);
      return result.data;
    } catch (e) {
      logger.e(e);
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

  @override
  Future<List<ParticipantRoomAsHost>> getRoomsToParticipateAsHost() async {
    try {
      logger.i("$runtimeType getRoomsToParticipateAsHost");
      final result = await _roomsDataSource.getHost(perPage: 10);
      logger.i(result.rooms);
      return result.rooms;
    } catch (e) {
      logger.e(e);
      rethrow;
    }
  }

  @override
  Future<List<ParticipantRoomAsGuest>> getRoomsToParticipateAsGuest() async {
    try {
      logger.i("$runtimeType getRoomsToParticipateAsGuest");
      final result = await _roomsDataSource.getGuest(perPage: 10);
      return result.rooms;
    } catch (e) {
      logger.e(e);
      rethrow;
    }
  }
}
