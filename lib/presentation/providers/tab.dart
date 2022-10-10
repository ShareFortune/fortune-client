import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../widgets/account/account/containers/page.dart';
import '../widgets/rooms/room_list/containers/page.dart';

final tabItemProvider =
    AutoDisposeStateProvider<TabItem>((ref) => TabItem.rooms);

enum TabItem {
  rooms(
    icon: Icons.home,
    page: RoomListPageContainer(),
  ),

  account(
    icon: Icons.timeline,
    page: AccountPegeContainer(),
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
  TabItem.rooms: GlobalKey<NavigatorState>(),
  TabItem.account: GlobalKey<NavigatorState>(),
};
