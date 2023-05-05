import 'package:fortune_client/data/datasource/local/shared_pref_data_source.dart';
import 'package:fortune_client/data/datasource/remote/go/rooms/rooms_data_source.dart';
import 'package:fortune_client/data/model/addresses/address/address.dart';
import 'package:fortune_client/data/model/enum/age_group.dart';
import 'package:fortune_client/data/model/enum/cigarette_frequency.dart';
import 'package:fortune_client/data/model/enum/drink_frequency.dart';
import 'package:fortune_client/data/model/enum/gender.dart';
import 'package:fortune_client/data/model/profile/profile_response/profile_response.dart';
import 'package:fortune_client/data/model/rooms/room/room.dart';
import 'package:fortune_client/data/model/rooms/room_detail/room_detail.dart';
import 'package:fortune_client/data/model/rooms/rooms_guest_response/rooms_guest_response.dart';
import 'package:fortune_client/data/model/rooms/rooms_host_response/rooms_host_response.dart';
import 'package:fortune_client/data/model/rooms/rooms_request/rooms_request.dart';
import 'package:fortune_client/data/model/tags/tag/tag.dart';
import 'package:fortune_client/data/repository/repository.dart';
import 'package:fortune_client/data/repository/rooms/rooms_repository.dart';
import 'package:fortune_client/util/converter/datetime_converter.dart';
import 'package:fortune_client/util/storage/app_pref_key.dart';

const roomPageSize = 20;
const searchPageSize = 10;

class RoomsRepositoryImpl implements RoomsRepository {
  final RoomsDataSource _roomsDataSource;
  final SharedPreferencesDataSource _shared;

  RoomsRepositoryImpl(this._roomsDataSource, this._shared);

  /// NextTokenを取得
  String? get roomsNextToken =>
      _shared.getString(AppPrefKey.roomsNextToken.keyString);

  /// NextTokenを保存
  void setRoomsNextToken(String? nextToken) =>
      _shared.setString(AppPrefKey.roomsNextToken.keyString, nextToken ?? "");

  @override
  Future<String> create({
    required String title,
    required int membersNum,
    required AgeGroup ageGroup,
    required Address address,
    required String explanation,
    List<Tag>? tagIds,
  }) async {
    final result = await _roomsDataSource.create(
      RoomsCreateRequest(
        roomName: title,
        membersNum: membersNum,
        ageGroup: ageGroup,
        addressId: await Repository.address.getId(address),
        explanation: explanation,
        applicationDeadline: DateTimeConverter.toYYYYMMDD(
          DateTime.now(),
          delimiter: "-",
        ),
      ).toJson(),
    );
    return result.id;
  }

  @override
  Future<String> update({
    required String roomId,
    required String name,
    required Gender gender,
    required Address address,
    required ProfileFiles files,
    required int? height,
    required DrinkFrequency? drinkFrequency,
    required CigaretteFrequency? cigaretteFrequency,
    required String? selfIntroduction,
    required int? occupationId,
    required List<String>? tagIds,
  }) async {
    final result = await _roomsDataSource.update(
      roomId,
      RoomsUpdateRequest(
        name: name,
        gender: gender,
        addressId: await Repository.address.getId(address),
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
  }

  @override
  Future<List<Room>> fetchRooms({
    int? memberNum,
    List<Tag>? tags,
    Address? address,
  }) async {
    int? addressId;
    if (address != null) addressId = await Repository.address.getId(address);

    final response = await _roomsDataSource.fetchRooms(
      perPage: roomPageSize,
      memberNum: memberNum,
      tagIds: tags?.map((e) => e.id).toList(),
      addressId: addressId,
    );

    setRoomsNextToken(response.nextToken);
    return response.rooms;
  }

  @override
  Future<List<Room>> fetchNextRooms() async {
    if (roomsNextToken?.isNotEmpty != true) return [];

    final response = await _roomsDataSource.fetchRooms(
      perPage: roomPageSize,
      nextToken: roomsNextToken,
    );

    setRoomsNextToken(response.nextToken);
    return response.rooms;
  }

  @override
  Future<RoomDetail> fetchDetail(String roomId) async {
    return await _roomsDataSource.getDetail(roomId);
  }

  @override
  Future<List<RoomsHostResponseRoom>> fetchRoomsHost() async {
    final result = await _roomsDataSource.getRoomsHost(perPage: 10);
    return result.rooms;
  }

  @override
  Future<List<RoomsGuestResponseRoom>> fetchRoomsGuest() async {
    final result = await _roomsDataSource.getRoomsGuest(perPage: 10);
    return result.rooms;
  }
}
