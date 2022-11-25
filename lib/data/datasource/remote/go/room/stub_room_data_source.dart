import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:fortune_client/data/datasource/remote/go/room/room_data_source.dart';
import 'package:fortune_client/data/model/room_list/room_list.dart';
import 'package:fortune_client/gen/assets.gen.dart';

class StubRoomDataSource implements RoomDataSource {
  @override
  Future<RoomList> getList() async {
    final path = Assets.stub.roomList;
    final json = await rootBundle.loadString(path);
    final rooms = RoomList.fromJson(
      jsonDecode(json) as Map<String, dynamic>,
    );
    print(rooms.nextToken);
    return rooms;
  }
}
