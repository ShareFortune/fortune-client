import 'package:auto_route/auto_route.dart';
import 'package:auto_route/empty_router_widgets.dart';
import 'package:fortune_client/data/model/room_detail/room_detail.dart';
import 'package:fortune_client/view/pages/account/account/account_page.dart';
import 'package:fortune_client/view/pages/auth/login/login_page.dart';
import 'package:fortune_client/view/pages/common/bottom_navigation_bar/bottom_navigation_bar.dart';
import 'package:fortune_client/view/pages/debug/debug_page.dart';
import 'package:fortune_client/view/pages/message/message_room/message_room_page.dart';
import 'package:fortune_client/view/pages/message/message_room_list/message_room_list_page.dart';
import 'package:fortune_client/view/pages/profile/create/entry_basic_profile/basic_profile_entry_page.dart';
import 'package:fortune_client/view/pages/profile/create/entry_detailed_profile/detailed_profile_entry_page.dart';
import 'package:fortune_client/view/pages/profile/create/entry_profile_icon_image/profile_icon_image_entry_page.dart';
import 'package:fortune_client/view/pages/profile/create/entry_profile_sub_image/entry_profile_sub_image_page.dart';
import 'package:fortune_client/view/pages/profile/profile/profile_page.dart';
import 'package:fortune_client/view/pages/request/request_confirmation/request_confirmation_page.dart';
import 'package:fortune_client/view/pages/rooms/create/room_create_page.dart';
import 'package:fortune_client/view/pages/rooms/participating_room_list/participating_room_list_page.dart';
import 'package:fortune_client/view/pages/rooms/room_detail/room_detail_page.dart';
import 'package:fortune_client/view/pages/rooms/room_list/room_list_page.dart';
import 'package:fortune_client/view/pages/settings/settings_page.dart';
import 'package:fortune_client/view/routes/route_guard.dart';
import 'package:fortune_client/view/routes/route_path.dart';

export 'app_router.gr.dart';

/// ボトムナビゲータで管理するページ
const homeRouter = AutoRoute(
  initial: true,
  name: "HomeRouter",
  page: MyBottomNavigationBar,
  guards: [AuthGuard, CheckIfMyProfileExists],
  children: [
    /// ルームリスト
    AutoRoute(
      name: "RoomsTab",
      path: RoutePath.rooms,
      page: EmptyRouterPage,
      children: [
        roomDetailRoute,
        AutoRoute(path: '', page: RoomListPage),
      ],
    ),

    /// 参加ルームリスト
    AutoRoute(
      name: "ParticipatingTab",
      path: RoutePath.participatingRooms,
      page: EmptyRouterPage,
      children: [
        roomDetailRoute,
        messageRoomRoute,

        /// 参加ルーム
        AutoRoute(path: '', page: ParticipatingRoomListPage),

        /// 参加リクエスト
        AutoRoute(
            path: RoutePath.requestConfirmation, page: RequestConfirmationPage),
      ],
    ),

    /// メッセージルームリスト
    AutoRoute(
      name: "MessagesTab",
      path: RoutePath.rooms,
      page: EmptyRouterPage,
      children: [
        messageRoomRoute,
        AutoRoute(path: '', page: MessageRoomListPage),
      ],
    ),
  ],
);

/// ルーム詳細
const roomDetailRoute = AutoRoute(
  path: RoutePath.roomDetail,
  page: RoomDetailPage,
);

/// メッセージ
const messageRoomRoute = AutoRoute(
  path: RoutePath.messageRoom,
  page: MessageRoomPage,
);

/// ログインページ
const loginRouter = AutoRoute(
  path: RoutePath.login,
  page: LoginPage,
);

/// デバッグ
const debugRouter = AutoRoute(
  path: RoutePath.debug,
  page: DebugPage,
);

/// プロフィール作成
const createProfileRoute = AutoRoute(
  name: "CreateProfileRoute",
  path: RoutePath.createProfile,
  page: EmptyRouterPage,
  guards: [AuthGuard],
  children: [
    RedirectRoute(
      path: "*",
      redirectTo: RoutePath.createProfileBasic,
    ),
    AutoRoute(
      path: RoutePath.createProfileBasic,
      page: BasicProfileEntryPage,
    ),
    AutoRoute(
      path: RoutePath.createProfileDetail,
      page: DetailedProfileEntryPage,
    ),
    AutoRoute(
      path: RoutePath.createProfileIconImage,
      page: ProfileIconImageEntryPage,
    ),
    AutoRoute(
      path: RoutePath.createProfileSubImage,
      page: EntryProfileSubImagePage,
    ),
  ],
);

/// プロフィール
const profileRoute = AutoRoute(
  path: RoutePath.profile,
  page: ProfilePage,
);

/// ルーム作成
const createRoom = AutoRoute(
  path: RoutePath.createRoom,
  page: RoomCreatePage,
);

/// アカウント
const accountRoute = AutoRoute(
  path: RoutePath.account,
  page: AccountPage,
);

/// 設定
const settingsRoute = AutoRoute(
  path: RoutePath.account,
  page: SettingsPage,
);

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    homeRouter,
    loginRouter,
    debugRouter,
    createRoom,
    createProfileRoute,
    profileRoute,
    accountRoute,
    settingsRoute,
  ],
)
class $AppRouter {}
