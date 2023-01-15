import 'package:fortune_client/data/datasource/remote/go/rooms/rooms_data_source.dart';
import 'package:fortune_client/data/model/address/address.dart';
import 'package:fortune_client/data/model/enum/room_join_request_status.dart';
import 'package:fortune_client/data/model/enum/room_status.dart';
import 'package:fortune_client/data/model/members_num/members_num.dart';
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
      // final result = await _roomsDataSource.getHost(perPage: 10);
      // return result.rooms;

      return [
        ParticipantRoomAsHost(
          id: "id",
          roomName: "渋谷で飲み会しませんか？",
          participantMainImageURLs: ["", "", ""],
          membersNum: MembersNum(
            maxMenNum: 2,
            menNum: 1,
            maxWomenNum: 2,
            womenNum: 0,
          ),
          status: RoomStatus.pending,
          joinRequestsCount: 3,
        ),
        ParticipantRoomAsHost(
          id: "id",
          roomName: "映画見る会",
          participantMainImageURLs: ["", ""],
          membersNum: MembersNum(
            maxMenNum: 2,
            menNum: 1,
            maxWomenNum: 2,
            womenNum: 2,
          ),
          status: RoomStatus.pending,
          joinRequestsCount: 3,
        ),
      ];
    } catch (e) {
      logger.e(e);
      rethrow;
    }
  }

  @override
  Future<List<ParticipantRoomAsGuest>> getRoomsToParticipateAsGuest() async {
    try {
      logger.i("$runtimeType getRoomsToParticipateAsGuest");

      /// 本番
      // final result = await _roomsDataSource.getGuest(perPage: 10);
      // return result.rooms;

      return [
        ParticipantRoomAsGuest(
          id: "id",
          roomName: "渋谷で飲み会しませんか？",
          hostMainImageURL: "hostMainImageURL",
          participantMainImageURLs: ["", "", ""],
          address: const Address(
            country: "東京",
            prefecture: "調布市",
            city: "御影町",
          ),
          membersNum: MembersNum(
            maxMenNum: 2,
            menNum: 1,
            maxWomenNum: 2,
            womenNum: 0,
          ),
          roomStatus: RoomStatus.pending,
          joinRequestStatus: RoomJoinRequestStatus.pending,
        ),
        ParticipantRoomAsGuest(
          id: "id",
          roomName: "ゲーム好き集まれ！",
          hostMainImageURL: "hostMainImageURL",
          participantMainImageURLs: [""],
          address: const Address(
            country: "東京",
            prefecture: "府中市",
            city: "幸町",
          ),
          membersNum: MembersNum(
            maxMenNum: 2,
            menNum: 1,
            maxWomenNum: 2,
            womenNum: 2,
          ),
          roomStatus: RoomStatus.opend,
          joinRequestStatus: RoomJoinRequestStatus.accepted,
        ),
        ParticipantRoomAsGuest(
          id: "id",
          roomName: "映画見る会",
          hostMainImageURL: "hostMainImageURL",
          participantMainImageURLs: ["", ""],
          address: const Address(
            country: "東京",
            prefecture: "多摩霊園",
            city: "湯河原町",
          ),
          membersNum: MembersNum(
            maxMenNum: 2,
            menNum: 1,
            maxWomenNum: 2,
            womenNum: 2,
          ),
          roomStatus: RoomStatus.pending,
          joinRequestStatus: RoomJoinRequestStatus.pending,
        ),
      ];
    } catch (e) {
      logger.e(e);
      rethrow;
    }
  }
}
