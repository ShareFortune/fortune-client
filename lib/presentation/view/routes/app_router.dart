import 'package:auto_route/auto_route.dart';

/// auto_routeと競合するのでmaterialからはRouter以外をインポート
import 'package:flutter/material.dart' hide Router;
import 'package:fortune_client/presentation/view/common/navigation_bar.dart';
import 'package:fortune_client/presentation/view/pages/auth/sign_in/sign_in_page.dart';
import 'package:fortune_client/presentation/view/pages/messages/message_room_list/containers/page.dart';
import 'package:fortune_client/presentation/view/pages/rooms/participating/containers/page.dart';
import 'package:fortune_client/presentation/view/pages/rooms/room_list/room_list_page.dart';
import 'package:fortune_client/presentation/view/routes/route_path.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(
      path: '/',
      page: FortuneBottomNavigationBar,
      children: [
        AutoRoute(
          path: RoutePath.appRouteRoomList,
          page: RoomListPage,
          initial: true,
        ),
        AutoRoute(path: 'posts', page: ParticipatingRoomListPage),
        AutoRoute(path: 'settings', page: MessageRoomListPage),
      ],
    ),
    AutoRoute(
      path: '/login',
      page: SignInPage,
    ),
  ],
)
class $AppRouter {}
