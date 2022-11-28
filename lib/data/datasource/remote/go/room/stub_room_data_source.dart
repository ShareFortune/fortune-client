import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:fortune_client/data/datasource/remote/go/room/room_data_source.dart';
import 'package:fortune_client/data/model/host_room/host_room.dart';
import 'package:fortune_client/data/model/room_list/room_list.dart';
import 'package:fortune_client/gen/assets.gen.dart';

class StubRoomDataSource implements RoomDataSource {
  @override
  Future<RoomList> getList() async {
    return _getEntity(RoomList.fromJson, Assets.stub.roomList);
  }

  @override
  Future<HostRoomList> getHostList() async {
    print("object");
    return _getEntity(HostRoomList.fromJson, Assets.stub.participatingRoomList);
  }

  Future<T> _getEntity<T>(
      T Function(Map<String, dynamic>) func, String path) async {
    return func(await _loadJson(path));
  }

  Future<Map<String, dynamic>> _loadJson(String path) async {
    final json = await rootBundle.loadString(path);
    return jsonDecode(json);
  }
}
