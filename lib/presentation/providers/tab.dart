import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fortune_client/presentation/widgets/message_rooms/message_room/components/page.dart';

import '../widgets/account/account/containers/page.dart';
import '../widgets/message_rooms/message_room/containers/page.dart';
import '../widgets/message_rooms/message_room_list/containers/page.dart';
import '../widgets/participating/participating_room_list/containers/page.dart';
import '../widgets/profile/profile/containers/page.dart';
import '../widgets/rooms/room_list/containers/page.dart';

final tabItemProvider =
    AutoDisposeStateProvider<TabItem>((ref) => TabItem.home);

enum TabItem {
  home(
    icon: Icons.home,
    page: RoomListPageContainer(),
  ),

  rooms(
    icon: Icons.event,
    page: ParticipatingRoomListPageContainer(),
  ),

  messages(
    icon: Icons.chat,
    page: MessageRoomListPageContainer(),
  ),

  account(
    icon: Icons.manage_accounts,
    page: ProfilePegeContainer(),
    // page: AccountPegeContainer(),
  );

  const TabItem({
    required this.icon,
    required this.page,
  });

  /// アイコン
  final IconData icon;

  /// 画面
  final Widget page;
}

final navigatorKeys = <TabItem, GlobalKey<NavigatorState>>{
  TabItem.home: GlobalKey<NavigatorState>(),
  TabItem.messages: GlobalKey<NavigatorState>(),
  TabItem.rooms: GlobalKey<NavigatorState>(),
  TabItem.account: GlobalKey<NavigatorState>(),
};
