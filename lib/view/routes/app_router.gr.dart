// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i27;
import 'package:auto_route/empty_router_widgets.dart' as _i2;
import 'package:flutter/material.dart' as _i28;
import 'package:fortune_client/view/pages/account/my_page/my_page.dart' as _i10;
import 'package:fortune_client/view/pages/auth/login/login_page.dart' as _i3;
import 'package:fortune_client/view/pages/common/bottom_navigation_bar/bottom_navigation_bar.dart'
    as _i1;
import 'package:fortune_client/view/pages/common/bottom_sheet/room_actions/guest/guest_room_actions_bottom_sheet.dart'
    as _i26;
import 'package:fortune_client/view/pages/common/bottom_sheet/room_actions/host/host_room_actions_bottom_sheet.dart'
    as _i25;
import 'package:fortune_client/view/pages/common/entry_page/entry_address/entry_address_page.dart'
    as _i9;
import 'package:fortune_client/view/pages/common/entry_page/entry_description/entry_description_page.dart'
    as _i15;
import 'package:fortune_client/view/pages/debug/debug_page.dart' as _i5;
import 'package:fortune_client/view/pages/message/message_room/message_room_page.dart'
    as _i4;
import 'package:fortune_client/view/pages/message/message_room_list/message_room_list_page.dart'
    as _i20;
import 'package:fortune_client/view/pages/profile/create/entry_basic_profile/basic_profile_entry_page.dart'
    as _i21;
import 'package:fortune_client/view/pages/profile/create/entry_detailed_profile/detailed_profile_entry_page.dart'
    as _i22;
import 'package:fortune_client/view/pages/profile/create/entry_profile_icon_image/profile_icon_image_entry_page.dart'
    as _i23;
import 'package:fortune_client/view/pages/profile/create/entry_profile_sub_image/entry_profile_sub_image_page.dart'
    as _i24;
import 'package:fortune_client/view/pages/profile/profile/profile_page.dart'
    as _i6;
import 'package:fortune_client/view/pages/profile/update/profile_update_page.dart'
    as _i11;
import 'package:fortune_client/view/pages/request/join_requests_confirmation/join_requests_confirmation_page.dart'
    as _i19;
import 'package:fortune_client/view/pages/rooms/action/create/create_room_page.dart'
    as _i7;
import 'package:fortune_client/view/pages/rooms/action/edit/edit_room_page.dart'
    as _i8;
import 'package:fortune_client/view/pages/rooms/participating/participating_room_list_page.dart'
    as _i18;
import 'package:fortune_client/view/pages/rooms/room_detail/room_detail_page.dart'
    as _i17;
import 'package:fortune_client/view/pages/rooms/room_list/room_list_page.dart'
    as _i16;
import 'package:fortune_client/view/pages/settings/settings_page.dart' as _i12;
import 'package:fortune_client/view/pages/tags/create/tag_creation_page.dart'
    as _i14;
import 'package:fortune_client/view/pages/tags/select/tags_selection_page.dart'
    as _i13;
import 'package:fortune_client/view/routes/app_router.dart' as _i30;
import 'package:fortune_client/view/routes/route_guard.dart' as _i29;

class AppRouter extends _i27.RootStackRouter {
  AppRouter({
    _i28.GlobalKey<_i28.NavigatorState>? navigatorKey,
    required this.authGuard,
    required this.checkIfMyProfileExists,
  }) : super(navigatorKey);

  final _i29.AuthGuard authGuard;

  final _i29.CheckIfMyProfileExists checkIfMyProfileExists;

  @override
  final Map<String, _i27.PageFactory> pagesMap = {
    HomeRouter.name: (routeData) {
      return _i27.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i1.MyBottomNavigationBar(),
      );
    },
    CreateProfileRoute.name: (routeData) {
      return _i27.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i2.EmptyRouterPage(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i27.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i3.LoginPage(),
      );
    },
    MessageRoomRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<MessageRoomRouteArgs>(
          orElse: () => MessageRoomRouteArgs(id: pathParams.getString('id')));
      return _i27.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i4.MessageRoomPage(
          key: args.key,
          id: args.id,
        ),
      );
    },
    DebugRoute.name: (routeData) {
      return _i27.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i5.DebugPage(),
      );
    },
    ProfileRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<ProfileRouteArgs>(
          orElse: () => ProfileRouteArgs(id: pathParams.getString('id')));
      return _i27.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i6.ProfilePage(
          key: args.key,
          id: args.id,
        ),
      );
    },
    CreateRoomRoute.name: (routeData) {
      final args = routeData.argsAs<CreateRoomRouteArgs>(
          orElse: () => const CreateRoomRouteArgs());
      return _i27.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i7.CreateRoomPage(key: args.key),
      );
    },
    EditRoomRoute.name: (routeData) {
      final args = routeData.argsAs<EditRoomRouteArgs>();
      return _i27.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i8.EditRoomPage(
          args.room,
          key: args.key,
        ),
      );
    },
    EntryAddressRoute.name: (routeData) {
      final args = routeData.argsAs<EntryAddressRouteArgs>(
          orElse: () => const EntryAddressRouteArgs());
      return _i27.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i9.EntryAddressPage(key: args.key),
      );
    },
    MyRoute.name: (routeData) {
      return _i27.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i10.MyPage(),
      );
    },
    ProfileUpdateRoute.name: (routeData) {
      return _i27.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i11.ProfileUpdatePage(),
      );
    },
    SettingsRoute.name: (routeData) {
      return _i27.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i12.SettingsPage(),
      );
    },
    TagsSelectionRoute.name: (routeData) {
      final args = routeData.argsAs<TagsSelectionRouteArgs>();
      return _i27.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i13.TagsSelectionPage(
          args.beingSet,
          key: args.key,
        ),
      );
    },
    TagCreationRoute.name: (routeData) {
      final args = routeData.argsAs<TagCreationRouteArgs>(
          orElse: () => const TagCreationRouteArgs());
      return _i27.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i14.TagCreationPage(key: args.key),
      );
    },
    EntryDescriptionRoute.name: (routeData) {
      final args = routeData.argsAs<EntryDescriptionRouteArgs>();
      return _i27.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i15.EntryDescriptionPage(
          title: args.title,
          value: args.value,
          key: args.key,
        ),
      );
    },
    BottomSheetRouter.name: (routeData) {
      return _i27.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i2.EmptyRouterPage(),
        customRouteBuilder: _i30.modalSheetBuilder,
        opaque: true,
        barrierDismissible: false,
      );
    },
    RoomsTab.name: (routeData) {
      return _i27.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i2.EmptyRouterPage(),
      );
    },
    ParticipatingTab.name: (routeData) {
      return _i27.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i2.EmptyRouterPage(),
      );
    },
    MessagesTab.name: (routeData) {
      return _i27.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i2.EmptyRouterPage(),
      );
    },
    RoomListRoute.name: (routeData) {
      return _i27.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i16.RoomListPage(),
      );
    },
    RoomDetailRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<RoomDetailRouteArgs>(
          orElse: () =>
              RoomDetailRouteArgs(roomId: pathParams.getString('roomId')));
      return _i27.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i17.RoomDetailPage(
          args.roomId,
          key: args.key,
        ),
      );
    },
    ParticipatingRoomListRoute.name: (routeData) {
      return _i27.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i18.ParticipatingRoomListPage(),
      );
    },
    JoinRequestsConfirmationRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final queryParams = routeData.queryParams;
      final args = routeData.argsAs<JoinRequestsConfirmationRouteArgs>(
          orElse: () => JoinRequestsConfirmationRouteArgs(
                id: pathParams.getString(
                  'id',
                  "タイトル",
                ),
                roomTitle: queryParams.getString(
                  'roomTitle',
                  "ルームタイトル",
                ),
              ));
      return _i27.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i19.JoinRequestsConfirmationPage(
          key: args.key,
          id: args.id,
          roomTitle: args.roomTitle,
        ),
      );
    },
    MessageRoomListRoute.name: (routeData) {
      return _i27.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i20.MessageRoomListPage(),
      );
    },
    BasicProfileEntryRoute.name: (routeData) {
      return _i27.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i21.BasicProfileEntryPage(),
      );
    },
    DetailedProfileEntryRoute.name: (routeData) {
      final args = routeData.argsAs<DetailedProfileEntryRouteArgs>(
          orElse: () => const DetailedProfileEntryRouteArgs());
      return _i27.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i22.DetailedProfileEntryPage(key: args.key),
      );
    },
    ProfileIconImageEntryRoute.name: (routeData) {
      return _i27.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i23.ProfileIconImageEntryPage(),
      );
    },
    EntryProfileSubImageRoute.name: (routeData) {
      return _i27.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i24.EntryProfileSubImagePage(),
      );
    },
    HostRoomActions.name: (routeData) {
      final args = routeData.argsAs<HostRoomActionsArgs>();
      return _i27.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i25.HostRoomActionsBottomSheet(
          args.room,
          key: args.key,
        ),
      );
    },
    GuestRoomActions.name: (routeData) {
      final args = routeData.argsAs<GuestRoomActionsArgs>();
      return _i27.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i26.GuestRoomActionsBottomSheet(
          args.room,
          key: args.key,
        ),
      );
    },
  };

  @override
  List<_i27.RouteConfig> get routes => [
        _i27.RouteConfig(
          HomeRouter.name,
          path: '/',
          guards: [
            authGuard,
            checkIfMyProfileExists,
          ],
          children: [
            _i27.RouteConfig(
              RoomsTab.name,
              path: 'rooms',
              parent: HomeRouter.name,
              children: [
                _i27.RouteConfig(
                  RoomListRoute.name,
                  path: '',
                  parent: RoomsTab.name,
                ),
                _i27.RouteConfig(
                  RoomDetailRoute.name,
                  path: 'room/:roomId',
                  parent: RoomsTab.name,
                ),
              ],
            ),
            _i27.RouteConfig(
              ParticipatingTab.name,
              path: 'participating-rooms',
              parent: HomeRouter.name,
              children: [
                _i27.RouteConfig(
                  ParticipatingRoomListRoute.name,
                  path: '',
                  parent: ParticipatingTab.name,
                ),
                _i27.RouteConfig(
                  RoomDetailRoute.name,
                  path: 'room/:roomId',
                  parent: ParticipatingTab.name,
                ),
                _i27.RouteConfig(
                  JoinRequestsConfirmationRoute.name,
                  path: 'request-confirmation/:id',
                  parent: ParticipatingTab.name,
                ),
              ],
            ),
            _i27.RouteConfig(
              MessagesTab.name,
              path: 'rooms',
              parent: HomeRouter.name,
              children: [
                _i27.RouteConfig(
                  MessageRoomListRoute.name,
                  path: '',
                  parent: MessagesTab.name,
                ),
                _i27.RouteConfig(
                  RoomDetailRoute.name,
                  path: 'room/:roomId',
                  parent: MessagesTab.name,
                ),
              ],
            ),
          ],
        ),
        _i27.RouteConfig(
          CreateProfileRoute.name,
          path: '/empty-router-page',
          guards: [authGuard],
          children: [
            _i27.RouteConfig(
              '#redirect',
              path: '',
              parent: CreateProfileRoute.name,
              redirectTo: 'create-profile-basic',
              fullMatch: true,
            ),
            _i27.RouteConfig(
              BasicProfileEntryRoute.name,
              path: 'create-profile-basic',
              parent: CreateProfileRoute.name,
            ),
            _i27.RouteConfig(
              DetailedProfileEntryRoute.name,
              path: 'create-profile-detail',
              parent: CreateProfileRoute.name,
            ),
            _i27.RouteConfig(
              ProfileIconImageEntryRoute.name,
              path: 'create-profile-icon-image',
              parent: CreateProfileRoute.name,
            ),
            _i27.RouteConfig(
              EntryProfileSubImageRoute.name,
              path: 'create-profile-sub-image',
              parent: CreateProfileRoute.name,
            ),
          ],
        ),
        _i27.RouteConfig(
          LoginRoute.name,
          path: 'login',
        ),
        _i27.RouteConfig(
          MessageRoomRoute.name,
          path: 'message-room/:id',
        ),
        _i27.RouteConfig(
          DebugRoute.name,
          path: 'debug',
        ),
        _i27.RouteConfig(
          ProfileRoute.name,
          path: 'profile/:id',
        ),
        _i27.RouteConfig(
          CreateRoomRoute.name,
          path: 'create-room',
        ),
        _i27.RouteConfig(
          EditRoomRoute.name,
          path: 'edit-room',
        ),
        _i27.RouteConfig(
          EntryAddressRoute.name,
          path: 'enter-address',
        ),
        _i27.RouteConfig(
          MyRoute.name,
          path: 'account',
        ),
        _i27.RouteConfig(
          ProfileUpdateRoute.name,
          path: 'update-profile',
        ),
        _i27.RouteConfig(
          SettingsRoute.name,
          path: 'setting',
        ),
        _i27.RouteConfig(
          TagsSelectionRoute.name,
          path: 'select-tag',
        ),
        _i27.RouteConfig(
          TagCreationRoute.name,
          path: 'create-tag',
        ),
        _i27.RouteConfig(
          EntryDescriptionRoute.name,
          path: 'entry-description',
        ),
        _i27.RouteConfig(
          BottomSheetRouter.name,
          path: '/empty-router-page',
          children: [
            _i27.RouteConfig(
              HostRoomActions.name,
              path: 'host-room-actions-bottom-sheet',
              parent: BottomSheetRouter.name,
            ),
            _i27.RouteConfig(
              GuestRoomActions.name,
              path: 'guest-room-actions-bottom-sheet',
              parent: BottomSheetRouter.name,
            ),
          ],
        ),
      ];
}

/// generated route for
/// [_i1.MyBottomNavigationBar]
class HomeRouter extends _i27.PageRouteInfo<void> {
  const HomeRouter({List<_i27.PageRouteInfo>? children})
      : super(
          HomeRouter.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'HomeRouter';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class CreateProfileRoute extends _i27.PageRouteInfo<void> {
  const CreateProfileRoute({List<_i27.PageRouteInfo>? children})
      : super(
          CreateProfileRoute.name,
          path: '/empty-router-page',
          initialChildren: children,
        );

  static const String name = 'CreateProfileRoute';
}

/// generated route for
/// [_i3.LoginPage]
class LoginRoute extends _i27.PageRouteInfo<void> {
  const LoginRoute()
      : super(
          LoginRoute.name,
          path: 'login',
        );

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i4.MessageRoomPage]
class MessageRoomRoute extends _i27.PageRouteInfo<MessageRoomRouteArgs> {
  MessageRoomRoute({
    _i28.Key? key,
    required String id,
  }) : super(
          MessageRoomRoute.name,
          path: 'message-room/:id',
          args: MessageRoomRouteArgs(
            key: key,
            id: id,
          ),
          rawPathParams: {'id': id},
        );

  static const String name = 'MessageRoomRoute';
}

class MessageRoomRouteArgs {
  const MessageRoomRouteArgs({
    this.key,
    required this.id,
  });

  final _i28.Key? key;

  final String id;

  @override
  String toString() {
    return 'MessageRoomRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i5.DebugPage]
class DebugRoute extends _i27.PageRouteInfo<void> {
  const DebugRoute()
      : super(
          DebugRoute.name,
          path: 'debug',
        );

  static const String name = 'DebugRoute';
}

/// generated route for
/// [_i6.ProfilePage]
class ProfileRoute extends _i27.PageRouteInfo<ProfileRouteArgs> {
  ProfileRoute({
    _i28.Key? key,
    required String id,
  }) : super(
          ProfileRoute.name,
          path: 'profile/:id',
          args: ProfileRouteArgs(
            key: key,
            id: id,
          ),
          rawPathParams: {'id': id},
        );

  static const String name = 'ProfileRoute';
}

class ProfileRouteArgs {
  const ProfileRouteArgs({
    this.key,
    required this.id,
  });

  final _i28.Key? key;

  final String id;

  @override
  String toString() {
    return 'ProfileRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i7.CreateRoomPage]
class CreateRoomRoute extends _i27.PageRouteInfo<CreateRoomRouteArgs> {
  CreateRoomRoute({_i28.Key? key})
      : super(
          CreateRoomRoute.name,
          path: 'create-room',
          args: CreateRoomRouteArgs(key: key),
        );

  static const String name = 'CreateRoomRoute';
}

class CreateRoomRouteArgs {
  const CreateRoomRouteArgs({this.key});

  final _i28.Key? key;

  @override
  String toString() {
    return 'CreateRoomRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i8.EditRoomPage]
class EditRoomRoute extends _i27.PageRouteInfo<EditRoomRouteArgs> {
  EditRoomRoute({
    required dynamic room,
    _i28.Key? key,
  }) : super(
          EditRoomRoute.name,
          path: 'edit-room',
          args: EditRoomRouteArgs(
            room: room,
            key: key,
          ),
        );

  static const String name = 'EditRoomRoute';
}

class EditRoomRouteArgs {
  const EditRoomRouteArgs({
    required this.room,
    this.key,
  });

  final dynamic room;

  final _i28.Key? key;

  @override
  String toString() {
    return 'EditRoomRouteArgs{room: $room, key: $key}';
  }
}

/// generated route for
/// [_i9.EntryAddressPage]
class EntryAddressRoute extends _i27.PageRouteInfo<EntryAddressRouteArgs> {
  EntryAddressRoute({_i28.Key? key})
      : super(
          EntryAddressRoute.name,
          path: 'enter-address',
          args: EntryAddressRouteArgs(key: key),
        );

  static const String name = 'EntryAddressRoute';
}

class EntryAddressRouteArgs {
  const EntryAddressRouteArgs({this.key});

  final _i28.Key? key;

  @override
  String toString() {
    return 'EntryAddressRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i10.MyPage]
class MyRoute extends _i27.PageRouteInfo<void> {
  const MyRoute()
      : super(
          MyRoute.name,
          path: 'account',
        );

  static const String name = 'MyRoute';
}

/// generated route for
/// [_i11.ProfileUpdatePage]
class ProfileUpdateRoute extends _i27.PageRouteInfo<void> {
  const ProfileUpdateRoute()
      : super(
          ProfileUpdateRoute.name,
          path: 'update-profile',
        );

  static const String name = 'ProfileUpdateRoute';
}

/// generated route for
/// [_i12.SettingsPage]
class SettingsRoute extends _i27.PageRouteInfo<void> {
  const SettingsRoute()
      : super(
          SettingsRoute.name,
          path: 'setting',
        );

  static const String name = 'SettingsRoute';
}

/// generated route for
/// [_i13.TagsSelectionPage]
class TagsSelectionRoute extends _i27.PageRouteInfo<TagsSelectionRouteArgs> {
  TagsSelectionRoute({
    required List<dynamic> beingSet,
    _i28.Key? key,
  }) : super(
          TagsSelectionRoute.name,
          path: 'select-tag',
          args: TagsSelectionRouteArgs(
            beingSet: beingSet,
            key: key,
          ),
        );

  static const String name = 'TagsSelectionRoute';
}

class TagsSelectionRouteArgs {
  const TagsSelectionRouteArgs({
    required this.beingSet,
    this.key,
  });

  final List<dynamic> beingSet;

  final _i28.Key? key;

  @override
  String toString() {
    return 'TagsSelectionRouteArgs{beingSet: $beingSet, key: $key}';
  }
}

/// generated route for
/// [_i14.TagCreationPage]
class TagCreationRoute extends _i27.PageRouteInfo<TagCreationRouteArgs> {
  TagCreationRoute({_i28.Key? key})
      : super(
          TagCreationRoute.name,
          path: 'create-tag',
          args: TagCreationRouteArgs(key: key),
        );

  static const String name = 'TagCreationRoute';
}

class TagCreationRouteArgs {
  const TagCreationRouteArgs({this.key});

  final _i28.Key? key;

  @override
  String toString() {
    return 'TagCreationRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i15.EntryDescriptionPage]
class EntryDescriptionRoute
    extends _i27.PageRouteInfo<EntryDescriptionRouteArgs> {
  EntryDescriptionRoute({
    required String title,
    required String? value,
    _i28.Key? key,
  }) : super(
          EntryDescriptionRoute.name,
          path: 'entry-description',
          args: EntryDescriptionRouteArgs(
            title: title,
            value: value,
            key: key,
          ),
        );

  static const String name = 'EntryDescriptionRoute';
}

class EntryDescriptionRouteArgs {
  const EntryDescriptionRouteArgs({
    required this.title,
    required this.value,
    this.key,
  });

  final String title;

  final String? value;

  final _i28.Key? key;

  @override
  String toString() {
    return 'EntryDescriptionRouteArgs{title: $title, value: $value, key: $key}';
  }
}

/// generated route for
/// [_i2.EmptyRouterPage]
class BottomSheetRouter extends _i27.PageRouteInfo<void> {
  const BottomSheetRouter({List<_i27.PageRouteInfo>? children})
      : super(
          BottomSheetRouter.name,
          path: '/empty-router-page',
          initialChildren: children,
        );

  static const String name = 'BottomSheetRouter';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class RoomsTab extends _i27.PageRouteInfo<void> {
  const RoomsTab({List<_i27.PageRouteInfo>? children})
      : super(
          RoomsTab.name,
          path: 'rooms',
          initialChildren: children,
        );

  static const String name = 'RoomsTab';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class ParticipatingTab extends _i27.PageRouteInfo<void> {
  const ParticipatingTab({List<_i27.PageRouteInfo>? children})
      : super(
          ParticipatingTab.name,
          path: 'participating-rooms',
          initialChildren: children,
        );

  static const String name = 'ParticipatingTab';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class MessagesTab extends _i27.PageRouteInfo<void> {
  const MessagesTab({List<_i27.PageRouteInfo>? children})
      : super(
          MessagesTab.name,
          path: 'rooms',
          initialChildren: children,
        );

  static const String name = 'MessagesTab';
}

/// generated route for
/// [_i16.RoomListPage]
class RoomListRoute extends _i27.PageRouteInfo<void> {
  const RoomListRoute()
      : super(
          RoomListRoute.name,
          path: '',
        );

  static const String name = 'RoomListRoute';
}

/// generated route for
/// [_i17.RoomDetailPage]
class RoomDetailRoute extends _i27.PageRouteInfo<RoomDetailRouteArgs> {
  RoomDetailRoute({
    required String roomId,
    _i28.Key? key,
  }) : super(
          RoomDetailRoute.name,
          path: 'room/:roomId',
          args: RoomDetailRouteArgs(
            roomId: roomId,
            key: key,
          ),
          rawPathParams: {'roomId': roomId},
        );

  static const String name = 'RoomDetailRoute';
}

class RoomDetailRouteArgs {
  const RoomDetailRouteArgs({
    required this.roomId,
    this.key,
  });

  final String roomId;

  final _i28.Key? key;

  @override
  String toString() {
    return 'RoomDetailRouteArgs{roomId: $roomId, key: $key}';
  }
}

/// generated route for
/// [_i18.ParticipatingRoomListPage]
class ParticipatingRoomListRoute extends _i27.PageRouteInfo<void> {
  const ParticipatingRoomListRoute()
      : super(
          ParticipatingRoomListRoute.name,
          path: '',
        );

  static const String name = 'ParticipatingRoomListRoute';
}

/// generated route for
/// [_i19.JoinRequestsConfirmationPage]
class JoinRequestsConfirmationRoute
    extends _i27.PageRouteInfo<JoinRequestsConfirmationRouteArgs> {
  JoinRequestsConfirmationRoute({
    _i28.Key? key,
    String id = "タイトル",
    String roomTitle = "ルームタイトル",
  }) : super(
          JoinRequestsConfirmationRoute.name,
          path: 'request-confirmation/:id',
          args: JoinRequestsConfirmationRouteArgs(
            key: key,
            id: id,
            roomTitle: roomTitle,
          ),
          rawPathParams: {'id': id},
          rawQueryParams: {'roomTitle': roomTitle},
        );

  static const String name = 'JoinRequestsConfirmationRoute';
}

class JoinRequestsConfirmationRouteArgs {
  const JoinRequestsConfirmationRouteArgs({
    this.key,
    this.id = "タイトル",
    this.roomTitle = "ルームタイトル",
  });

  final _i28.Key? key;

  final String id;

  final String roomTitle;

  @override
  String toString() {
    return 'JoinRequestsConfirmationRouteArgs{key: $key, id: $id, roomTitle: $roomTitle}';
  }
}

/// generated route for
/// [_i20.MessageRoomListPage]
class MessageRoomListRoute extends _i27.PageRouteInfo<void> {
  const MessageRoomListRoute()
      : super(
          MessageRoomListRoute.name,
          path: '',
        );

  static const String name = 'MessageRoomListRoute';
}

/// generated route for
/// [_i21.BasicProfileEntryPage]
class BasicProfileEntryRoute extends _i27.PageRouteInfo<void> {
  const BasicProfileEntryRoute()
      : super(
          BasicProfileEntryRoute.name,
          path: 'create-profile-basic',
        );

  static const String name = 'BasicProfileEntryRoute';
}

/// generated route for
/// [_i22.DetailedProfileEntryPage]
class DetailedProfileEntryRoute
    extends _i27.PageRouteInfo<DetailedProfileEntryRouteArgs> {
  DetailedProfileEntryRoute({_i28.Key? key})
      : super(
          DetailedProfileEntryRoute.name,
          path: 'create-profile-detail',
          args: DetailedProfileEntryRouteArgs(key: key),
        );

  static const String name = 'DetailedProfileEntryRoute';
}

class DetailedProfileEntryRouteArgs {
  const DetailedProfileEntryRouteArgs({this.key});

  final _i28.Key? key;

  @override
  String toString() {
    return 'DetailedProfileEntryRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i23.ProfileIconImageEntryPage]
class ProfileIconImageEntryRoute extends _i27.PageRouteInfo<void> {
  const ProfileIconImageEntryRoute()
      : super(
          ProfileIconImageEntryRoute.name,
          path: 'create-profile-icon-image',
        );

  static const String name = 'ProfileIconImageEntryRoute';
}

/// generated route for
/// [_i24.EntryProfileSubImagePage]
class EntryProfileSubImageRoute extends _i27.PageRouteInfo<void> {
  const EntryProfileSubImageRoute()
      : super(
          EntryProfileSubImageRoute.name,
          path: 'create-profile-sub-image',
        );

  static const String name = 'EntryProfileSubImageRoute';
}

/// generated route for
/// [_i25.HostRoomActionsBottomSheet]
class HostRoomActions extends _i27.PageRouteInfo<HostRoomActionsArgs> {
  HostRoomActions({
    required dynamic room,
    _i28.Key? key,
  }) : super(
          HostRoomActions.name,
          path: 'host-room-actions-bottom-sheet',
          args: HostRoomActionsArgs(
            room: room,
            key: key,
          ),
        );

  static const String name = 'HostRoomActions';
}

class HostRoomActionsArgs {
  const HostRoomActionsArgs({
    required this.room,
    this.key,
  });

  final dynamic room;

  final _i28.Key? key;

  @override
  String toString() {
    return 'HostRoomActionsArgs{room: $room, key: $key}';
  }
}

/// generated route for
/// [_i26.GuestRoomActionsBottomSheet]
class GuestRoomActions extends _i27.PageRouteInfo<GuestRoomActionsArgs> {
  GuestRoomActions({
    required dynamic room,
    _i28.Key? key,
  }) : super(
          GuestRoomActions.name,
          path: 'guest-room-actions-bottom-sheet',
          args: GuestRoomActionsArgs(
            room: room,
            key: key,
          ),
        );

  static const String name = 'GuestRoomActions';
}

class GuestRoomActionsArgs {
  const GuestRoomActionsArgs({
    required this.room,
    this.key,
  });

  final dynamic room;

  final _i28.Key? key;

  @override
  String toString() {
    return 'GuestRoomActionsArgs{room: $room, key: $key}';
  }
}
