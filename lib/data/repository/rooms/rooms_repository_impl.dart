import 'package:fortune_client/data/datasource/remote/go/rooms/rooms_data_source.dart';
import 'package:fortune_client/data/model/enum/age_group.dart';
import 'package:fortune_client/data/model/address/address.dart';
import 'package:fortune_client/data/model/form/create_room_form/create_room_form.dart';
import 'package:fortune_client/data/model/participant/guest/participant_room_as_guest.dart';
import 'package:fortune_client/data/model/participant/host/participant_room_as_host.dart';
import 'package:fortune_client/data/model/room_detail/room_detail.dart';
import 'package:fortune_client/data/model/rooms/rooms.dart';
import 'package:fortune_client/data/model/tag/tag.dart';
import 'package:fortune_client/data/repository/rooms/rooms_repository.dart';
import 'package:fortune_client/util/converter/datetime_converter.dart';
import 'package:fortune_client/util/logger/logger.dart';

class RoomsRepositoryImpl implements RoomsRepository {
  final RoomsDataSource _roomsDataSource;

  RoomsRepositoryImpl(this._roomsDataSource);

  @override
  Future<String> create({
    required String title,
    required int membersNum,
    required AgeGroup ageGroup,
    required Address addressId,
    required String explanation,
    List<Tag>? tagIds,
  }) async {
    try {
      logger.i("$runtimeType $create");
      final form = CreateRoomForm(
        roomName: title,
        membersNum: membersNum,
        ageGroup: ageGroup,
        addressId: 76,
        explanation: explanation,
        applicationDeadline: DateTimeConverter.convertDateTimeYYYYMMDD(
          DateTime.now(),
          delimiter: "-",
        ),
      );

      final result = await _roomsDataSource.create(form.toJson());
      return result.id;
    } catch (e) {
      logger.e(e);
      return "";
    }
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
  Future<RoomDetail> fetchDetail(String roomId) async {
    try {
      logger.i("$runtimeType fetchDetail");
      return await _roomsDataSource.getDetail(roomId);
    } catch (e) {
      logger.e(e);
      rethrow;
    }
  }

  @override
  Future<List<ParticipantRoomAsHost>> getRoomsToParticipateAsHost() async {
    try {
      logger.i("$runtimeType getRoomsToParticipateAsHost");
      final result = await _roomsDataSource.getHost(perPage: 10);
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
