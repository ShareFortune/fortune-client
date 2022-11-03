import 'package:fortune_client/domain/entities/enum/gender.dart';
import 'package:fortune_client/domain/entities/enum/room_status.dart';
import 'package:fortune_client/domain/entities/models/member/member.dart';
import 'package:fortune_client/domain/entities/models/room/room.dart';
import 'package:fortune_client/domain/usecases/core/error/failures.dart';
import 'package:fortune_client/domain/usecases/room/fetch_list.dart';
import 'package:fpdart/fpdart.dart';

class RoomFetchListInteractor implements RoomFetchListUseCase {
  @override
  handle(RoomFetchListParams params) async {
    const host = Member(
      id: "id",
      name: "name",
      gender: Gender.man,
      mainImageUrl:
          "https://gws-ug.jp/wp-content/plugins/all-in-one-seo-pack/images/default-user-image.png",
    );

    final room = Room(
      id: null,
      name: "name",
      roomStatus: RoomStatus.closed,
      createdAt: DateTime.now(),
      hostUser: host,
      members: [host, host, host],
      tags: [],
    );
    return RoomFetchListResults(rooms: [room]);
  }
}
