import 'package:auto_route/auto_route.dart';
import 'package:fortune_client/view/pages/message/message_room_list/message_room_list_page.dart';
import 'package:fortune_client/view/pages/profile/create/profile_create_page.dart';
import 'package:fortune_client/view/pages/rooms/create/room_create_page.dart';
import 'package:fortune_client/view/pages/rooms/room_join_list/room_join_list_page.dart';
import 'package:fortune_client/view/widgets/navigation_bar.dart';
import 'package:fortune_client/view/pages/auth/sign_in/sign_in_page.dart';
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
    ),
    AutoRoute(
      initial: true,
      path: RoutePath.appRouteProfileCreate,
      page: ProfileCreatePage,
    ),
    AutoRoute(
      page: NavigationBar,
      guards: [AuthGuard],
      children: [
        AutoRoute(
          path: RoutePath.appRouteRoomsSearchTab,
          page: RoomListPage,
        ),
        AutoRoute(
          path: RoutePath.appRouteParticipatingRoomsTab,
          page: RoomJoinListPage,
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
