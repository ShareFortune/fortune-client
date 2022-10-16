import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:fortune_client/views/screens/rooms/room_i_attend/widgets/guest_room_list_tile.dart';

import '../../../widgets/app_bar_container.dart';
import 'widgets/hosts_room_list_tile.dart';

class RoomIAttendScreenComponent extends StatelessWidget {
  const RoomIAttendScreenComponent({super.key});

  final String icon =
      "https://gws-ug.jp/wp-content/plugins/all-in-one-seo-pack/images/default-user-image.png";

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            const FortuneAppBarContainer(
              bottomWidget: TabBar(
                labelColor: Colors.black,
                tabs: [
                  Tab(text: "ホスト"),
                  Tab(text: "ゲスト"),
                ],
              ),
            ),
          ];
        },

        /// 参加している又は参加予定のルームリスト
        /// [MediaQuery.removePadding]余分な下部マージンを削除
        body: MediaQuery.removePadding(
          context: context,
          removeTop: true,
          child: TabBarView(
            children: [
              /// ホストで開催予定のルームリスト
              _roomsIHost(),

              /// ゲストで参加予定のルームリスト
              _roomsIGuest(),
            ],
          ),
        ),
      ),
    );
  }

  _roomsIHost() {
    final icons = [icon, icon, icon, icon];

    return AnimationLimiter(
      child: ListView.builder(
        itemCount: 100,
        itemBuilder: (BuildContext context, int index) {
          return AnimationConfiguration.staggeredList(
            position: index,
            duration: const Duration(milliseconds: 175),
            child: SlideAnimation(
              verticalOffset: 50.0,
              child: FadeInAnimation(
                child: HostsRoomListTileWidget(
                  roomTitle: "roomTitle",
                  maleUserIcons: icons,
                  femaleUserIcons: icons,
                  holdingPlace: "東京都・府中市",
                  maxNumOfParticipants: 10,
                  onTapRoom: () {},
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  _roomsIGuest() {
    return AnimationLimiter(
      child: ListView.builder(
        itemCount: 100,
        itemBuilder: (BuildContext context, int index) {
          return AnimationConfiguration.staggeredList(
            position: index,
            duration: const Duration(milliseconds: 175),
            child: SlideAnimation(
              verticalOffset: 50.0,
              child: FadeInAnimation(
                child: GuestRoomListTileWidget(
                  hostIcon: icon,
                  hostName: 'hostName',
                  roomTitle: "roomTitle",
                  onTapRoom: () {},
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
