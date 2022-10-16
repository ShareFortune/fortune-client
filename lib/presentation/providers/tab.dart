import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../views/screens/rooms/room_i_attend/room_i_attend_screen_component.dart';
import '../../views/screens/rooms/rooms/rooms_screen_container.dart';
import '../widgets/message_rooms/message_room_list/containers/page.dart';

import '../widgets/profile/profile/containers/page.dart';

final tabItemProvider =
    AutoDisposeStateProvider<TabItem>((ref) => TabItem.home);

enum TabItem {
  home(
    icon: Icons.home,
    page: RoomsScreenContainer(),
  ),

  rooms(
    icon: Icons.event,
    page: RoomIAttendScreenComponent(),
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
