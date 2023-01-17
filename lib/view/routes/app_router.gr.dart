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
import 'package:auto_route/auto_route.dart' as _i20;
import 'package:auto_route/empty_router_widgets.dart' as _i2;
import 'package:flutter/material.dart' as _i21;
import 'package:fortune_client/view/pages/account/my_page/my_page.dart' as _i8;
import 'package:fortune_client/view/pages/auth/login/login_page.dart' as _i4;
import 'package:fortune_client/view/pages/common/bottom_navigation_bar/bottom_navigation_bar.dart'
    as _i1;
import 'package:fortune_client/view/pages/debug/debug_page.dart' as _i5;
import 'package:fortune_client/view/pages/message/message_room/message_room_page.dart'
    as _i3;
import 'package:fortune_client/view/pages/message/message_room_list/message_room_list_page.dart'
    as _i15;
import 'package:fortune_client/view/pages/profile/create/entry_basic_profile/basic_profile_entry_page.dart'
    as _i16;
import 'package:fortune_client/view/pages/profile/create/entry_detailed_profile/detailed_profile_entry_page.dart'
    as _i17;
import 'package:fortune_client/view/pages/profile/create/entry_profile_icon_image/profile_icon_image_entry_page.dart'
    as _i18;
import 'package:fortune_client/view/pages/profile/create/entry_profile_sub_image/entry_profile_sub_image_page.dart'
    as _i19;
import 'package:fortune_client/view/pages/profile/profile/profile_page.dart'
    as _i6;
import 'package:fortune_client/view/pages/request/request_confirmation/request_confirmation_page.dart'
    as _i14;
import 'package:fortune_client/view/pages/rooms/create/room_create_page.dart'
    as _i7;
import 'package:fortune_client/view/pages/rooms/participating/participating_room_list_page.dart'
    as _i13;
import 'package:fortune_client/view/pages/rooms/room_detail/room_detail_page.dart'
    as _i12;
import 'package:fortune_client/view/pages/rooms/room_list/room_list_page.dart'
    as _i11;
import 'package:fortune_client/view/pages/settings/settings_page.dart' as _i9;
import 'package:fortune_client/view/pages/tags/select/tags_selection_page.dart'
    as _i10;
import 'package:fortune_client/view/routes/route_guard.dart' as _i22;

class AppRouter extends _i20.RootStackRouter {
  AppRouter({
    _i21.GlobalKey<_i21.NavigatorState>? navigatorKey,
    required this.authGuard,
    required this.checkIfMyProfileExists,
  }) : super(navigatorKey);

  final _i22.AuthGuard authGuard;

  final _i22.CheckIfMyProfileExists checkIfMyProfileExists;

  @override
  final Map<String, _i20.PageFactory> pagesMap = {
    HomeRouter.name: (routeData) {
      return _i20.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i1.MyBottomNavigationBar(),
      );
    },
    CreateProfileRoute.name: (routeData) {
      return _i20.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i2.EmptyRouterPage(),
      );
    },
    MessageRoomRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<MessageRoomRouteArgs>(
          orElse: () => MessageRoomRouteArgs(id: pathParams.getString('id')));
      return _i20.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i3.MessageRoomPage(
          key: args.key,
          id: args.id,
        ),
      );
    },
    LoginRoute.name: (routeData) {
      return _i20.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i4.LoginPage(),
      );
    },
    DebugRoute.name: (routeData) {
      return _i20.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i5.DebugPage(),
      );
    },
    ProfileRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<ProfileRouteArgs>(
          orElse: () => ProfileRouteArgs(id: pathParams.getString('id')));
      return _i20.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i6.ProfilePage(
          key: args.key,
          id: args.id,
        ),
      );
    },
    RoomCreateRoute.name: (routeData) {
      return _i20.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i7.RoomCreatePage(),
      );
    },
    MyRoute.name: (routeData) {
      return _i20.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i8.MyPage(),
      );
    },
    SettingsRoute.name: (routeData) {
      return _i20.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i9.SettingsPage(),
      );
    },
    TagsSelectionRoute.name: (routeData) {
      final args = routeData.argsAs<TagsSelectionRouteArgs>(
          orElse: () => const TagsSelectionRouteArgs());
      return _i20.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i10.TagsSelectionPage(key: args.key),
      );
    },
    RoomsTab.name: (routeData) {
      return _i20.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i2.EmptyRouterPage(),
      );
    },
    ParticipatingTab.name: (routeData) {
      return _i20.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i2.EmptyRouterPage(),
      );
    },
    MessagesTab.name: (routeData) {
      return _i20.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i2.EmptyRouterPage(),
      );
    },
    RoomListRoute.name: (routeData) {
      return _i20.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i11.RoomListPage(),
      );
    },
    RoomDetailRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<RoomDetailRouteArgs>(
          orElse: () => RoomDetailRouteArgs(id: pathParams.getString('id')));
      return _i20.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i12.RoomDetailPage(
          key: args.key,
          id: args.id,
        ),
      );
    },
    ParticipatingRoomListRoute.name: (routeData) {
      return _i20.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i13.ParticipatingRoomListPage(),
      );
    },
    RequestConfirmationRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<RequestConfirmationRouteArgs>(
          orElse: () =>
              RequestConfirmationRouteArgs(id: pathParams.getInt('id')));
      return _i20.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i14.RequestConfirmationPage(
          key: args.key,
          id: args.id,
        ),
      );
    },
    MessageRoomListRoute.name: (routeData) {
      return _i20.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i15.MessageRoomListPage(),
      );
    },
    BasicProfileEntryRoute.name: (routeData) {
      return _i20.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i16.BasicProfileEntryPage(),
      );
    },
    DetailedProfileEntryRoute.name: (routeData) {
      return _i20.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i17.DetailedProfileEntryPage(),
      );
    },
    ProfileIconImageEntryRoute.name: (routeData) {
      return _i20.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i18.ProfileIconImageEntryPage(),
      );
    },
    EntryProfileSubImageRoute.name: (routeData) {
      return _i20.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i19.EntryProfileSubImagePage(),
      );
    },
  };

  @override
  List<_i20.RouteConfig> get routes => [
        _i20.RouteConfig(
          HomeRouter.name,
          path: '/',
          guards: [
            authGuard,
            checkIfMyProfileExists,
          ],
          children: [
            _i20.RouteConfig(
              RoomsTab.name,
              path: 'rooms',
              parent: HomeRouter.name,
              children: [
                _i20.RouteConfig(
                  RoomListRoute.name,
                  path: '',
                  parent: RoomsTab.name,
                ),
                _i20.RouteConfig(
                  RoomDetailRoute.name,
                  path: 'room/:id',
                  parent: RoomsTab.name,
                ),
              ],
            ),
            _i20.RouteConfig(
              ParticipatingTab.name,
              path: 'participating-rooms',
              parent: HomeRouter.name,
              children: [
                _i20.RouteConfig(
                  ParticipatingRoomListRoute.name,
                  path: '',
                  parent: ParticipatingTab.name,
                ),
                _i20.RouteConfig(
                  RoomDetailRoute.name,
                  path: 'room/:id',
                  parent: ParticipatingTab.name,
                ),
                _i20.RouteConfig(
                  RequestConfirmationRoute.name,
                  path: 'request-confirmation/:id',
                  parent: ParticipatingTab.name,
                ),
              ],
            ),
            _i20.RouteConfig(
              MessagesTab.name,
              path: 'rooms',
              parent: HomeRouter.name,
              children: [
                _i20.RouteConfig(
                  MessageRoomListRoute.name,
                  path: '',
                  parent: MessagesTab.name,
                ),
                _i20.RouteConfig(
                  RoomDetailRoute.name,
                  path: 'room/:id',
                  parent: MessagesTab.name,
                ),
              ],
            ),
          ],
        ),
        _i20.RouteConfig(
          CreateProfileRoute.name,
          path: '/empty-router-page',
          guards: [authGuard],
          children: [
            _i20.RouteConfig(
              '#redirect',
              path: '',
              parent: CreateProfileRoute.name,
              redirectTo: 'create-profile-basic',
              fullMatch: true,
            ),
            _i20.RouteConfig(
              BasicProfileEntryRoute.name,
              path: 'create-profile-basic',
              parent: CreateProfileRoute.name,
            ),
            _i20.RouteConfig(
              DetailedProfileEntryRoute.name,
              path: 'create-profile-detail',
              parent: CreateProfileRoute.name,
            ),
            _i20.RouteConfig(
              ProfileIconImageEntryRoute.name,
              path: 'create-profile-icon-image',
              parent: CreateProfileRoute.name,
            ),
            _i20.RouteConfig(
              EntryProfileSubImageRoute.name,
              path: 'create-profile-sub-image',
              parent: CreateProfileRoute.name,
            ),
          ],
        ),
        _i20.RouteConfig(
          MessageRoomRoute.name,
          path: 'message-room/:id',
        ),
        _i20.RouteConfig(
          LoginRoute.name,
          path: 'login',
        ),
        _i20.RouteConfig(
          DebugRoute.name,
          path: 'debug',
        ),
        _i20.RouteConfig(
          ProfileRoute.name,
          path: 'profile/:id',
        ),
        _i20.RouteConfig(
          RoomCreateRoute.name,
          path: 'create-room',
        ),
        _i20.RouteConfig(
          MyRoute.name,
          path: 'account',
        ),
        _i20.RouteConfig(
          SettingsRoute.name,
          path: 'setting',
        ),
        _i20.RouteConfig(
          TagsSelectionRoute.name,
          path: 'tags',
        ),
      ];
}

/// generated route for
/// [_i1.MyBottomNavigationBar]
class HomeRouter extends _i20.PageRouteInfo<void> {
  const HomeRouter({List<_i20.PageRouteInfo>? children})
      : super(
          HomeRouter.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'HomeRouter';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class CreateProfileRoute extends _i20.PageRouteInfo<void> {
  const CreateProfileRoute({List<_i20.PageRouteInfo>? children})
      : super(
          CreateProfileRoute.name,
          path: '/empty-router-page',
          initialChildren: children,
        );

  static const String name = 'CreateProfileRoute';
}

/// generated route for
/// [_i3.MessageRoomPage]
class MessageRoomRoute extends _i20.PageRouteInfo<MessageRoomRouteArgs> {
  MessageRoomRoute({
    _i21.Key? key,
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

  final _i21.Key? key;

  final String id;

  @override
  String toString() {
    return 'MessageRoomRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i4.LoginPage]
class LoginRoute extends _i20.PageRouteInfo<void> {
  const LoginRoute()
      : super(
          LoginRoute.name,
          path: 'login',
        );

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i5.DebugPage]
class DebugRoute extends _i20.PageRouteInfo<void> {
  const DebugRoute()
      : super(
          DebugRoute.name,
          path: 'debug',
        );

  static const String name = 'DebugRoute';
}

/// generated route for
/// [_i6.ProfilePage]
class ProfileRoute extends _i20.PageRouteInfo<ProfileRouteArgs> {
  ProfileRoute({
    _i21.Key? key,
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

  final _i21.Key? key;

  final String id;

  @override
  String toString() {
    return 'ProfileRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i7.RoomCreatePage]
class RoomCreateRoute extends _i20.PageRouteInfo<void> {
  const RoomCreateRoute()
      : super(
          RoomCreateRoute.name,
          path: 'create-room',
        );

  static const String name = 'RoomCreateRoute';
}

/// generated route for
/// [_i8.MyPage]
class MyRoute extends _i20.PageRouteInfo<void> {
  const MyRoute()
      : super(
          MyRoute.name,
          path: 'account',
        );

  static const String name = 'MyRoute';
}

/// generated route for
/// [_i9.SettingsPage]
class SettingsRoute extends _i20.PageRouteInfo<void> {
  const SettingsRoute()
      : super(
          SettingsRoute.name,
          path: 'setting',
        );

  static const String name = 'SettingsRoute';
}

/// generated route for
/// [_i10.TagsSelectionPage]
class TagsSelectionRoute extends _i20.PageRouteInfo<TagsSelectionRouteArgs> {
  TagsSelectionRoute({_i21.Key? key})
      : super(
          TagsSelectionRoute.name,
          path: 'tags',
          args: TagsSelectionRouteArgs(key: key),
        );

  static const String name = 'TagsSelectionRoute';
}

class TagsSelectionRouteArgs {
  const TagsSelectionRouteArgs({this.key});

  final _i21.Key? key;

  @override
  String toString() {
    return 'TagsSelectionRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i2.EmptyRouterPage]
class RoomsTab extends _i20.PageRouteInfo<void> {
  const RoomsTab({List<_i20.PageRouteInfo>? children})
      : super(
          RoomsTab.name,
          path: 'rooms',
          initialChildren: children,
        );

  static const String name = 'RoomsTab';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class ParticipatingTab extends _i20.PageRouteInfo<void> {
  const ParticipatingTab({List<_i20.PageRouteInfo>? children})
      : super(
          ParticipatingTab.name,
          path: 'participating-rooms',
          initialChildren: children,
        );

  static const String name = 'ParticipatingTab';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class MessagesTab extends _i20.PageRouteInfo<void> {
  const MessagesTab({List<_i20.PageRouteInfo>? children})
      : super(
          MessagesTab.name,
          path: 'rooms',
          initialChildren: children,
        );

  static const String name = 'MessagesTab';
}

/// generated route for
/// [_i11.RoomListPage]
class RoomListRoute extends _i20.PageRouteInfo<void> {
  const RoomListRoute()
      : super(
          RoomListRoute.name,
          path: '',
        );

  static const String name = 'RoomListRoute';
}

/// generated route for
/// [_i12.RoomDetailPage]
class RoomDetailRoute extends _i20.PageRouteInfo<RoomDetailRouteArgs> {
  RoomDetailRoute({
    _i21.Key? key,
    required String id,
  }) : super(
          RoomDetailRoute.name,
          path: 'room/:id',
          args: RoomDetailRouteArgs(
            key: key,
            id: id,
          ),
          rawPathParams: {'id': id},
        );

  static const String name = 'RoomDetailRoute';
}

class RoomDetailRouteArgs {
  const RoomDetailRouteArgs({
    this.key,
    required this.id,
  });

  final _i21.Key? key;

  final String id;

  @override
  String toString() {
    return 'RoomDetailRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i13.ParticipatingRoomListPage]
class ParticipatingRoomListRoute extends _i20.PageRouteInfo<void> {
  const ParticipatingRoomListRoute()
      : super(
          ParticipatingRoomListRoute.name,
          path: '',
        );

  static const String name = 'ParticipatingRoomListRoute';
}

/// generated route for
/// [_i14.RequestConfirmationPage]
class RequestConfirmationRoute
    extends _i20.PageRouteInfo<RequestConfirmationRouteArgs> {
  RequestConfirmationRoute({
    _i21.Key? key,
    required int id,
  }) : super(
          RequestConfirmationRoute.name,
          path: 'request-confirmation/:id',
          args: RequestConfirmationRouteArgs(
            key: key,
            id: id,
          ),
          rawPathParams: {'id': id},
        );

  static const String name = 'RequestConfirmationRoute';
}

class RequestConfirmationRouteArgs {
  const RequestConfirmationRouteArgs({
    this.key,
    required this.id,
  });

  final _i21.Key? key;

  final int id;

  @override
  String toString() {
    return 'RequestConfirmationRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i15.MessageRoomListPage]
class MessageRoomListRoute extends _i20.PageRouteInfo<void> {
  const MessageRoomListRoute()
      : super(
          MessageRoomListRoute.name,
          path: '',
        );

  static const String name = 'MessageRoomListRoute';
}

/// generated route for
/// [_i16.BasicProfileEntryPage]
class BasicProfileEntryRoute extends _i20.PageRouteInfo<void> {
  const BasicProfileEntryRoute()
      : super(
          BasicProfileEntryRoute.name,
          path: 'create-profile-basic',
        );

  static const String name = 'BasicProfileEntryRoute';
}

/// generated route for
/// [_i17.DetailedProfileEntryPage]
class DetailedProfileEntryRoute extends _i20.PageRouteInfo<void> {
  const DetailedProfileEntryRoute()
      : super(
          DetailedProfileEntryRoute.name,
          path: 'create-profile-detail',
        );

  static const String name = 'DetailedProfileEntryRoute';
}

/// generated route for
/// [_i18.ProfileIconImageEntryPage]
class ProfileIconImageEntryRoute extends _i20.PageRouteInfo<void> {
  const ProfileIconImageEntryRoute()
      : super(
          ProfileIconImageEntryRoute.name,
          path: 'create-profile-icon-image',
        );

  static const String name = 'ProfileIconImageEntryRoute';
}

/// generated route for
/// [_i19.EntryProfileSubImagePage]
class EntryProfileSubImageRoute extends _i20.PageRouteInfo<void> {
  const EntryProfileSubImageRoute()
      : super(
          EntryProfileSubImageRoute.name,
          path: 'create-profile-sub-image',
        );

  static const String name = 'EntryProfileSubImageRoute';
}
