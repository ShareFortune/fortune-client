import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fortune_client/presentation/view/pages/messages/message_room_list/containers/page.dart';
import 'package:fortune_client/presentation/view/pages/rooms/participating/containers/page.dart';
import 'package:fortune_client/presentation/view/pages/rooms/room_list/room_list_page.dart';

final currentTabProvider =
    AutoDisposeStateProvider<TabItem>((ref) => TabItem.home);

enum TabItem {
  home(
    icon: Icons.home,
    page: RoomListPage(),
  ),

  rooms(
    icon: Icons.event,
    page: ParticipatingRoomListPageContainer(),
  ),

  messages(
    icon: Icons.chat,
    page: MessageRoomListPageContainer(),
  );

  // account(
  //   icon: Icons.manage_accounts,
  //   page: AccountPegeContainer(),
  // );

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
  // TabItem.account: GlobalKey<NavigatorState>(),
};
