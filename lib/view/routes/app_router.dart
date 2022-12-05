import 'package:auto_route/auto_route.dart';
import 'package:auto_route/empty_router_widgets.dart';
import 'package:fortune_client/view/pages/account/account/account_page.dart';
import 'package:fortune_client/view/pages/common/bottom_navigation_bar/bottom_navigation_bar.dart';
import 'package:fortune_client/view/pages/message/message_room/message_room_page.dart';
import 'package:fortune_client/view/pages/message/message_room_list/message_room_list_page.dart';
import 'package:fortune_client/view/pages/profile/create/profile_create_page.dart';
import 'package:fortune_client/view/pages/profile/profile/profile_page.dart';
import 'package:fortune_client/view/pages/request/request_confirmation/request_confirmation_page.dart';
import 'package:fortune_client/view/pages/rooms/create/room_create_page.dart';
import 'package:fortune_client/view/pages/rooms/participating_room_list/participating_room_list_page.dart';
import 'package:fortune_client/view/pages/auth/sign_in/sign_in_page.dart';
import 'package:fortune_client/view/pages/rooms/room_detail/room_detail_page.dart';
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
      path: RoutePath.appRouteProfileCreate,
      page: ProfileCreatePage,
    ),
    AutoRoute(
      path: RoutePath.appRouteRoot,
      page: MyBottomNavigationBar,
      guards: [AuthGuard],
      children: [
        AutoRoute(
          name: 'RoomListTabRoute',
          path: RoutePath.appRouteRoomsTab,
          page: EmptyRouterPage,
          children: [
            AutoRoute(
              path: "",
              page: RoomListPage,
            ),
            AutoRoute(
              path: RoutePath.appRouteRoomDetail,
              page: RoomDetailPage,
            ),
          ],
        ),
        AutoRoute(
          name: 'ParticipatingRoomListTabRoute',
          path: RoutePath.appRouteParticipatingRoomsTab,
          page: EmptyRouterPage,
          children: [
            AutoRoute(
              path: "",
              page: ParticipatingRoomListPage,
            ),
          ],
        ),
        AutoRoute(
          name: 'RoomCreateTabRoute',
          path: RoutePath.appRouteRoomCreationTab,
          page: EmptyRouterPage,
          children: [
            AutoRoute(
              path: "",
              page: RoomCreatePage,
            ),
          ],
        ),
        AutoRoute(
          name: 'MessageRoomListTabRoute',
          path: RoutePath.appRouteMessageRoomsTab,
          page: EmptyRouterPage,
          children: [
            AutoRoute(
              path: "",
              page: MessageRoomListPage,
            ),
            AutoRoute(
              path: RoutePath.appRouteMessageRoom,
              page: MessageRoomPage,
            )
          ],
        ),
        AutoRoute(
          name: "AccountTabRoute",
          path: RoutePath.appRouteAccountTab,
          page: AccountPage,
        ),
      ],
    ),
    AutoRoute(
      path: RoutePath.appRouteRequestConfirmationPage,
      page: RequestConfirmationPage,
    ),

    /// プロフィール
    AutoRoute(
      path: RoutePath.appRouteProfile,
      page: ProfilePage,
    ),
  ],
)
class $AppRouter {}
