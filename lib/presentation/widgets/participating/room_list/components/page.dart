import 'package:flutter/material.dart';

import 'parts/gest_participating_room_list_tile.dart';
import 'parts/host_participating_room_list_tile.dart';

class ParticipatingRoomListPageComponent extends StatelessWidget {
  const ParticipatingRoomListPageComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          title: const Text('参加ルーム',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              )),
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(child: Text("ホスト", style: TextStyle(color: Colors.black))),
              Tab(child: Text("ゲスト", style: TextStyle(color: Colors.black))),
            ],
          ),
        ),
        body: const TabBarView(
          children: <Widget>[
            Center(child: HostParticipatingRoomListTileComponent()),
            Center(child: GestParticipatingRoomListTileComponent()),
          ],
        ),
      ),
    );
  }
}
