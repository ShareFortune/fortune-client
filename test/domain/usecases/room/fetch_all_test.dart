import 'package:flutter_test/flutter_test.dart';
import 'package:fortune_client/domain/entities/enum/gender.dart';
import 'package:fortune_client/domain/entities/enum/room_status.dart';
import 'package:fortune_client/domain/entities/models/member.dart';
import 'package:fortune_client/domain/entities/models/room.dart';
import 'package:fortune_client/domain/entities/models/tag.dart';
import 'package:fortune_client/domain/interactors/room/fetch_all.dart';
import 'package:fortune_client/domain/usecases/room/fetch_all.dart';

/// テストケース
///
/// - ルームのリストが取得できるか
///
///
/// ルームのリストが取得できるか
///

void main() {
  late RoomFetchAllInteractor interactor;

  setUp(() {
    interactor = RoomFetchAllInteractor();
  });

  // final tMember = Member(
  //   id: "id",
  //   name: "name",
  //   gender: Gender.man,
  //   mainImageUrl: "mainImageUrl",
  // );

  // final tTag = Tag(
  //   id: "id",
  //   name: "name",
  //   explanation: "explanation",
  // );

  // final tRoom = Room(
  //   id: "id",
  //   name: "name",
  //   roomStatus: RoomStatus.opend,
  //   createdAt: DateTime.now(),
  //   hostUser: tMember,
  //   members: [tMember, tMember],
  //   tags: [tTag, tTag],
  // );

  test(
    "ルームのリストが取得できるか",
    () async {
      final params = RoomFetchAllParams();
      final result = await interactor.handle(params);
      expect(result.rooms, 0);
    },
  );
}
