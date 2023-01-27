import 'package:auto_route/auto_route.dart';
import 'package:auto_route/empty_router_widgets.dart';
import 'package:flutter/material.dart';
import 'package:fortune_client/view/pages/account/my_page/my_page.dart';
import 'package:fortune_client/view/pages/common/bottom_sheet/room_actions/room_actions_bottom_sheet.dart';
import 'package:fortune_client/view/pages/profile/update/profile_update_page.dart';
import 'package:fortune_client/view/pages/auth/login/login_page.dart';
import 'package:fortune_client/view/pages/common/bottom_navigation_bar/bottom_navigation_bar.dart';
import 'package:fortune_client/view/pages/common/entry_page/entry_address/entry_address_page.dart';
import 'package:fortune_client/view/pages/common/entry_page/entry_description/entry_description_page.dart';
import 'package:fortune_client/view/pages/debug/debug_page.dart';
import 'package:fortune_client/view/pages/message/message_room/message_room_page.dart';
import 'package:fortune_client/view/pages/message/message_room_list/message_room_list_page.dart';
import 'package:fortune_client/view/pages/profile/create/entry_basic_profile/basic_profile_entry_page.dart';
import 'package:fortune_client/view/pages/profile/create/entry_detailed_profile/detailed_profile_entry_page.dart';
import 'package:fortune_client/view/pages/profile/create/entry_profile_icon_image/profile_icon_image_entry_page.dart';
import 'package:fortune_client/view/pages/profile/create/entry_profile_sub_image/entry_profile_sub_image_page.dart';
import 'package:fortune_client/view/pages/profile/profile/profile_page.dart';
import 'package:fortune_client/view/pages/request/join_requests_confirmation/join_requests_confirmation_page.dart';
import 'package:fortune_client/view/pages/rooms/action/create/create_room_page.dart';
import 'package:fortune_client/view/pages/rooms/action/edit/edit_room_page.dart';
import 'package:fortune_client/view/pages/rooms/participating/participating_room_list_page.dart';
import 'package:fortune_client/view/pages/rooms/room_detail/room_detail_page.dart';
import 'package:fortune_client/view/pages/rooms/room_list/room_list_page.dart';
import 'package:fortune_client/view/pages/tags/create/tag_creation_page.dart';
import 'package:fortune_client/view/pages/tags/select/tags_selection_page.dart';
import 'package:fortune_client/view/pages/settings/settings_page.dart';
import 'package:fortune_client/view/routes/route_guard.dart';
import 'package:fortune_client/view/routes/route_path.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

export 'app_router.gr.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    /// ボトムナビゲータで管理するページ
    AutoRoute(
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
            AutoRoute(path: '', page: RoomListPage),
            AutoRoute(
                path: RoutePath.roomDetail, page: RoomDetailPage), // ルーム詳細
          ],
        ),

        /// 参加ルームリスト
        AutoRoute(
          name: "ParticipatingTab",
          path: RoutePath.participatingRooms,
          page: EmptyRouterPage,
          children: [
            AutoRoute(path: '', page: ParticipatingRoomListPage),
            AutoRoute(
                path: RoutePath.roomDetail, page: RoomDetailPage), // ルーム詳細

            /// 参加リクエスト
            AutoRoute(
                path: RoutePath.requestConfirmation,
                page: JoinRequestsConfirmationPage),
          ],
        ),

        /// メッセージルームリスト
        AutoRoute(
          name: "MessagesTab",
          path: RoutePath.rooms,
          page: EmptyRouterPage,
          children: [
            AutoRoute(path: '', page: MessageRoomListPage),
            AutoRoute(
                path: RoutePath.roomDetail, page: RoomDetailPage), // ルーム詳細
          ],
        ),
      ],
    ),

    /// プロフィール作成
    AutoRoute(
      name: "CreateProfileRoute",
      page: EmptyRouterPage,
      guards: [AuthGuard],
      children: [
        RedirectRoute(path: "", redirectTo: RoutePath.createProfileBasic),
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
    ),

    /// ログイン
    AutoRoute(path: RoutePath.login, page: LoginPage),

    /// メッセージ
    AutoRoute(path: RoutePath.messageRoom, page: MessageRoomPage),

    /// デバッグ
    AutoRoute(path: RoutePath.debug, page: DebugPage),

    /// プロフィール
    AutoRoute(path: RoutePath.profile, page: ProfilePage),

    /// ルーム作成
    AutoRoute(path: RoutePath.createRoom, page: CreateRoomPage),

    /// ルーム編集
    AutoRoute(path: RoutePath.editRoom, page: EditRoomPage),

    /// 住所検索
    AutoRoute(path: RoutePath.enterAddress, page: EntryAddressPage),

    /// アカウント
    AutoRoute(path: RoutePath.account, page: MyPage),

    /// プロフィール更新
    AutoRoute(path: RoutePath.updateProfile, page: ProfileUpdatePage),

    /// 設定
    AutoRoute(path: RoutePath.setting, page: SettingsPage),

    /// タグ選択
    AutoRoute(path: RoutePath.tagSelection, page: TagsSelectionPage),

    /// タグ作成
    AutoRoute(path: RoutePath.tagCreation, page: TagCreationPage),

    /// 説明入力
    AutoRoute(path: RoutePath.entryDescription, page: EntryDescriptionPage),

    CustomRoute(
      name: 'BottomSheetRouter',
      page: EmptyRouterPage,
      customRouteBuilder: modalSheetBuilder,
      children: [
        AutoRoute(name: 'RoomActions', page: RoomActionsBottomSheet),
      ],
    ),
  ],
)
class $AppRouter {}

Route<T> modalSheetBuilder<T>(
    BuildContext context, Widget child, CustomPage<T> page) {
  return ModalBottomSheetRoute(
    settings: page,
    builder: (context) => child,
    expanded: true,
  );
}
