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
import 'package:fortune_client/data/model/tags/tag/tag.dart';

abstract class RoomsRepository {
  /// ルーム作成
  Future<String> create({
    required String title,
    required int membersNum,
    required AgeGroup ageGroup,
    required Address address,
    required String explanation,
    List<Tag>? tagIds,
  });

  /// 更新
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
  });

  /// ルームリストを取得
  Future<List<Room>> fetchRooms({
    int? memberNum,
    List<Tag>? tags,
    Address? address,
  });

  /// ルームリストを取得・ホスト
  Future<List<RoomsHostResponseRoom>> fetchRoomsHost();

  /// ルームリストを取得・ゲスト
  Future<List<RoomsGuestResponseRoom>> fetchRoomsGuest();

  /// 詳細取得
  Future<RoomDetail> fetchDetail(String roomId);
}
