import 'package:fortune_client/data/datasource/remote/go/rooms/rooms_data_source.dart';
import 'package:fortune_client/data/model/core/base/address_with_id/address_with_id.dart';
import 'package:fortune_client/data/model/core/base/profiles_files/profiles_files.dart';
import 'package:fortune_client/data/model/core/base/room/room.dart';
import 'package:fortune_client/data/model/core/base/tag/tag.dart';
import 'package:fortune_client/data/model/core/enum/age_group.dart';
import 'package:fortune_client/data/model/core/enum/cigarette_frequency.dart';
import 'package:fortune_client/data/model/core/enum/drink_frequency.dart';
import 'package:fortune_client/data/model/core/enum/gender.dart';
import 'package:fortune_client/data/model/rooms/get_v1_rooms/get_v1_rooms.dart';
import 'package:fortune_client/data/model/rooms/get_v1_rooms_guest/get_v1_rooms_guest.dart';
import 'package:fortune_client/data/model/rooms/get_v1_rooms_host/get_v1_rooms_host.dart';
import 'package:fortune_client/data/model/rooms/patch_v1_rooms_id/patch_v1_rooms_id.dart';
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
      final result = await _roomsDataSource.create(
        PostV1RoomsRequest(
          roomName: title,
          membersNum: membersNum,
          ageGroup: ageGroup,
          addressId: addressWithId.id,
          explanation: explanation,
          applicationDeadline: DateTimeConverter.toYYYYMMDD(
            DateTime.now(),
            delimiter: "-",
          ),
        ).toJson(),
      );
      return result.id;
    } catch (e) {
      logger.e(e);
      rethrow;
    }
  }

  @override
  Future<String> update({
    required String roomId,
    required String name,
    required Gender gender,
    required int addressId,
    required ProfilesFiles files,
    required int? height,
    required DrinkFrequency? drinkFrequency,
    required CigaretteFrequency? cigaretteFrequency,
    required String? selfIntroduction,
    required int? occupationId,
    required List<String>? tagIds,
  }) async {
    try {
      final result = await _roomsDataSource.update(
        roomId,
        PatchV1RoomsIdRequest(
          name: name,
          gender: gender,
          addressId: addressId,
          files: files,
          height: height,
          drinkFrequency: drinkFrequency,
          cigaretteFrequency: cigaretteFrequency,
          selfIntroduction: selfIntroduction,
          occupationId: occupationId,
          tagIds: tagIds,
        ).toJson(),
      );
      return result.id;
    } catch (e) {
      logger.e(e);
      rethrow;
    }
  }

  @override
  Future<List<GetV1RoomsResponseRoom>> fetchList({
    int? memberNum,
    List<Tag>? tags,
    AddressWithId? addressWithId,
  }) async {
    try {
      final result = await _roomsDataSource.fetchList(
        perPage: 10,
        memberNum: memberNum,
        tagIds: tags?.map((e) => e.id).toList(),
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
      return await _roomsDataSource.getDetail(roomId);
    } catch (e) {
      logger.e(e);
      rethrow;
    }
  }

  @override
  Future<List<GetV1RoomsHostResponseRoom>> getRoomsToParticipateAsHost() async {
    try {
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
      final result = await _roomsDataSource.getRoomsGuest(perPage: 10);
      return result.data;
    } catch (e) {
      logger.e(e);
      rethrow;
    }
  }
}
