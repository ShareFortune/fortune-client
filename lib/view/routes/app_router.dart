import 'package:auto_route/auto_route.dart';
import 'package:auto_route/empty_router_widgets.dart';
import 'package:fortune_client/view/pages/account/account/account_page.dart';
import 'package:fortune_client/view/pages/auth/login/login_page.dart';
import 'package:fortune_client/view/pages/common/bottom_navigation_bar/bottom_navigation_bar.dart';
import 'package:fortune_client/view/pages/message/message_room/message_room_page.dart';
import 'package:fortune_client/view/pages/message/message_room_list/message_room_list_page.dart';
import 'package:fortune_client/view/pages/profile/create/entry_basic_profile/basic_profile_entry_page.dart';
import 'package:fortune_client/view/pages/profile/create/entry_detailed_profile/detailed_profile_entry_page.dart';
import 'package:fortune_client/view/pages/profile/create/profile_create_page.dart';
import 'package:fortune_client/view/pages/profile/profile/profile_page.dart';
import 'package:fortune_client/view/pages/request/request_confirmation/request_confirmation_page.dart';
import 'package:fortune_client/view/pages/rooms/create/room_create_page.dart';
import 'package:fortune_client/view/pages/rooms/participating_room_list/participating_room_list_page.dart';
import 'package:fortune_client/view/pages/rooms/room_detail/room_detail_page.dart';
import 'package:fortune_client/view/pages/rooms/room_list/room_list_page.dart';
import 'package:fortune_client/view/routes/route_guard.dart';
import 'package:fortune_client/view/routes/route_path.dart';

export 'app_router.gr.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    /// ログイン
    AutoRoute(
      path: RoutePath.login,
      page: LoginPage,
      initial: true,
    ),

    /// プロフィール作成
    AutoRoute(
      name: "ProfileCreateRoute",
      path: RoutePath.createProfile,
      page: EmptyRouterPage,
      guards: [AuthGuard],
      children: [
        AutoRoute(
          path: "",
          page: BasicProfileEntryPage,
        ),
        AutoRoute(
          path: RoutePath.createProfileDetail,
          page: DetailedProfileEntryPage,
        ),
      ],
    ),

    /// プロフィール
    AutoRoute(
      path: RoutePath.profile,
      page: ProfilePage,
      guards: [AuthGuard, CheckIfMyProfileExists],
    ),

    /// ナビゲーションタブ
    AutoRoute(
      name: "HomeRoute",
      path: RoutePath.root,
      page: MyBottomNavigationBar,
      guards: [AuthGuard, CheckIfMyProfileExists],
      children: [
        AutoRoute(
          name: 'RoomsRoute',
          path: RoutePath.rooms,
          page: EmptyRouterPage,
          children: [
            AutoRoute(path: "", page: RoomListPage),
            AutoRoute(path: RoutePath.roomDetail, page: RoomDetailPage),
          ],
        ),
        AutoRoute(
          name: 'ParticipatingRoomsRoute',
          path: RoutePath.participatingRooms,
          page: EmptyRouterPage,
          children: [
            AutoRoute(path: "", page: ParticipatingRoomListPage),
            AutoRoute(
              path: RoutePath.requestConfirmation,
              page: RequestConfirmationPage,
              guards: [AuthGuard],
            ),
          ],
        ),
        AutoRoute(
          name: 'CreateRoomRoute',
          path: RoutePath.createRoom,
          page: EmptyRouterPage,
          children: [
            AutoRoute(path: "", page: RoomCreatePage),
          ],
        ),
        AutoRoute(
          name: 'MessageRoomsRoute',
          path: RoutePath.messageRooms,
          page: EmptyRouterPage,
          children: [
            AutoRoute(path: "", page: MessageRoomListPage),
            AutoRoute(path: RoutePath.messageRoom, page: MessageRoomPage)
          ],
        ),
        AutoRoute(
          name: "AccountRoute",
          path: RoutePath.account,
          page: AccountPage,
        ),
      ],
    ),
  ],
)
class $AppRouter {}
