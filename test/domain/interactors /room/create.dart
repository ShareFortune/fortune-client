import 'package:flutter_test/flutter_test.dart';
import 'package:fortune_client/domain/entities/enum/gender.dart';
import 'package:fortune_client/domain/entities/enum/room_status.dart';
import 'package:fortune_client/domain/entities/models/member.dart';
import 'package:fortune_client/domain/entities/models/room.dart';
import 'package:fortune_client/domain/interactors/room/create.dart';
import 'package:fortune_client/domain/repositories/room.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'create.mocks.dart';

@GenerateMocks([RoomRepository])
void main() {
  // late RoomCreateInteractor interactor;
  late RoomRepository repository;

  setUp(() {
    repository = MockRoomRepository();
    // interactor = RoomCreateInteractor(repository);
  });

  group("ルームが作成できるか", () {
    // test("リポジトリからルームIDを取得できたら作成したルームデータを返せるか", () async {
    //   final tMember = Member(
    //     id: "id",
    //     name: "name",
    //     gender: Gender.man,
    //     mainImageUrl: "mainImageUrl",
    //   );

    //   final tRoom = Room(
    //     id: "id",
    //     name: "name",
    //     roomStatus: RoomStatus.opend,
    //     createdAt: DateTime.now(),
    //     hostUser: tMember,
    //     members: [],
    //     tags: [],
    //   );

    //   when(repository.create(tRoom))
    //       .thenAnswer((realInvocation) async => Right(tRoom.id));

    //   interactor.handle();

    //   verify(repository.create(tRoom));
    //   expect(actual, tRoom);
    // });

    // test("取得できなかったらエラーメッセージを返せるか", () {});

    test("ルームを取得できるか", () {
      // final tMember = Member(
      //   id: "id",
      //   name: "name",
      //   gender: Gender.man,
      //   mainImageUrl: "mainImageUrl",
      // );

      // final tRoom = Room(
      //   id: "id",
      //   name: "name",
      //   roomStatus: RoomStatus.opend,
      //   createdAt: DateTime.now(),
      //   hostUser: tMember,
      //   members: [],
      //   tags: [],
      // );
    });
  });
}
