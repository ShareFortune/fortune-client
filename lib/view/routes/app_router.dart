import 'package:auto_route/auto_route.dart';
import 'package:fortune_client/view/common/bottom_navigation_bar/bottom_navigation_bar.dart';
import 'package:fortune_client/view/pages/account/account/account_page.dart';
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
      initial: true,
      path: RoutePath.appRouteRoot,
      page: MyBottomNavigationBar,
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
          path: RoutePath.appRouteRoomCreateTab,
          page: RoomCreatePage,
        ),
        AutoRoute(
          path: RoutePath.appRouteMessageRoomsTab,
          page: MessageRoomListPage,
        ),
        AutoRoute(
          path: RoutePath.appRouteAccountTab,
          page: AccountPage,
        ),
      ],
    ),
    AutoRoute(
      path: RoutePath.appRouteRoomDetail,
      page: RoomDetailPage,
    ),
    AutoRoute(
      path: RoutePath.appRouteProfile,
      page: ProfilePage,
    ),
    AutoRoute(
      path: RoutePath.appRouteRequestConfirmationPage,
      page: RequestConfirmationPage,
    ),
    AutoRoute(
      path: RoutePath.messageRoom,
      page: MessageRoomPage,
    )
  ],
)
class $AppRouter {}
