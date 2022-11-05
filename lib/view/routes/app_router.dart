import 'package:auto_route/auto_route.dart';

import 'package:fortune_client/view/widgets/navigation_bar.dart';
import 'package:fortune_client/view/pages/auth/sign_in/sign_in_page.dart';
import 'package:fortune_client/view/pages/messages/message_room_list/containers/page.dart';
import 'package:fortune_client/view/pages/rooms/participating/containers/page.dart';
import 'package:fortune_client/view/pages/rooms/room_list/room_list_page.dart';
import 'package:fortune_client/view/routes/route_guard.dart';
import 'package:fortune_client/view/routes/route_path.dart';

export 'app_router.gr.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      path: RoutePath.appRouteSignIn,
      page: SignInPage,
      initial: true,
    ),
    AutoRoute(
      path: "/",
      page: NavigationBar,
      guards: [AuthGuard],
      children: [
        AutoRoute(
          path: RoutePath.appRouteRoomsSearchTab,
          page: RoomListPage,
        ),
        AutoRoute(
          path: RoutePath.appRouteParticipatingRoomsTab,
          page: ParticipatingRoomListPage,
        ),
        AutoRoute(
          path: RoutePath.appRouteMessageRoomsTab,
          page: MessageRoomListPage,
        ),
      ],
    ),
  ],
)
class $AppRouter {}
