import 'package:fortune_client/data/datasource/remote/go/rooms/rooms_data_source.dart';
import 'package:fortune_client/data/model/base/address_with_id/address_with_id.dart';
import 'package:fortune_client/data/model/base/room/room.dart';
import 'package:fortune_client/data/model/base/tag/tag.dart';
import 'package:fortune_client/data/model/enum/age_group.dart';
import 'package:fortune_client/data/model/rooms/get_v1_rooms/get_v1_rooms.dart';
import 'package:fortune_client/data/model/rooms/get_v1_rooms_guest/get_v1_rooms_guest.dart';
import 'package:fortune_client/data/model/rooms/get_v1_rooms_host/get_v1_rooms_host.dart';
import 'package:fortune_client/data/model/rooms/get_v1_rooms_search/get_v1_rooms_search.dart';
import 'package:fortune_client/data/model/rooms/post_v1_rooms/post_v1_rooms.dart';
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
    required AddressWithId addressWithId,
    required String explanation,
    List<Tag>? tagIds,
  }) async {
    try {
      logger.i("$runtimeType $create");
      final form = PostV1RoomsRequest(
        roomName: title,
        membersNum: membersNum,
        ageGroup: ageGroup,
        addressId: addressWithId.id,
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
  Future<List<GetV1RoomsResponseRoom>> fetchList({
    AddressWithId? addressWithId,
  }) async {
    try {
      logger.i("$runtimeType fetchList");
      final result = await _roomsDataSource.fetchList(
        perPage: 10,
        addressId: addressWithId?.id.toString(),
      );
      return result.data;
    } catch (e) {
      logger.e(e);
      rethrow;
    }
  }

  @override
  Future<Room> fetchDetail(String roomId) async {
    try {
      logger.i("$runtimeType fetchDetail");
      return await _roomsDataSource.getDetail(roomId);
    } catch (e) {
      logger.e(e);
      rethrow;
    }
  }

  @override
  Future<List<GetV1RoomsHostResponseRoom>> getRoomsToParticipateAsHost() async {
    try {
      logger.i("$runtimeType getRoomsToParticipateAsHost");
      final result = await _roomsDataSource.getRoomsHost(perPage: 10);
      return result.data;
    } catch (e) {
      logger.e(e);
      rethrow;
    }
  }

  @override
  Future<List<GetV1RoomsGuestResponseRoom>>
      getRoomsToParticipateAsGuest() async {
    try {
      logger.i("$runtimeType getRoomsToParticipateAsGuest");
      final result = await _roomsDataSource.getRoomsGuest(perPage: 10);
      return result.data;
    } catch (e) {
      logger.e(e);
      rethrow;
    }
  }
}
