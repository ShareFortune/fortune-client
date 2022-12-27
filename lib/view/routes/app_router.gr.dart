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
import 'package:auto_route/auto_route.dart' as _i19;
import 'package:auto_route/empty_router_widgets.dart' as _i5;
import 'package:flutter/material.dart' as _i20;
import 'package:fortune_client/view/pages/account/account/account_page.dart'
    as _i7;
import 'package:fortune_client/view/pages/auth/login/login_page.dart' as _i2;
import 'package:fortune_client/view/pages/common/bottom_navigation_bar/bottom_navigation_bar.dart'
    as _i1;
import 'package:fortune_client/view/pages/debug/debug_page.dart' as _i3;
import 'package:fortune_client/view/pages/message/message_room/message_room_page.dart'
    as _i11;
import 'package:fortune_client/view/pages/message/message_room_list/message_room_list_page.dart'
    as _i14;
import 'package:fortune_client/view/pages/profile/create/entry_basic_profile/basic_profile_entry_page.dart'
    as _i15;
import 'package:fortune_client/view/pages/profile/create/entry_detailed_profile/detailed_profile_entry_page.dart'
    as _i16;
import 'package:fortune_client/view/pages/profile/create/entry_profile_icon_image/profile_icon_image_entry_page.dart'
    as _i17;
import 'package:fortune_client/view/pages/profile/create/entry_profile_sub_image/entry_profile_sub_image_page.dart'
    as _i18;
import 'package:fortune_client/view/pages/profile/profile/profile_page.dart'
    as _i6;
import 'package:fortune_client/view/pages/request/request_confirmation/request_confirmation_page.dart'
    as _i13;
import 'package:fortune_client/view/pages/rooms/create/room_create_page.dart'
    as _i4;
import 'package:fortune_client/view/pages/rooms/participating_room_list/participating_room_list_page.dart'
    as _i12;
import 'package:fortune_client/view/pages/rooms/room_detail/room_detail_page.dart'
    as _i9;
import 'package:fortune_client/view/pages/rooms/room_list/room_list_page.dart'
    as _i10;
import 'package:fortune_client/view/pages/settings/settings_page.dart' as _i8;
import 'package:fortune_client/view/routes/route_guard.dart' as _i21;

class AppRouter extends _i19.RootStackRouter {
  AppRouter({
    _i20.GlobalKey<_i20.NavigatorState>? navigatorKey,
    required this.authGuard,
    required this.checkIfMyProfileExists,
  }) : super(navigatorKey);

  final _i21.AuthGuard authGuard;

  final _i21.CheckIfMyProfileExists checkIfMyProfileExists;

  @override
  final Map<String, _i19.PageFactory> pagesMap = {
    HomeRouter.name: (routeData) {
      return _i19.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i1.MyBottomNavigationBar(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i19.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i2.LoginPage(),
      );
    },
    DebugRoute.name: (routeData) {
      return _i19.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i3.DebugPage(),
      );
    },
    RoomCreateRoute.name: (routeData) {
      return _i19.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i4.RoomCreatePage(),
      );
    },
    CreateProfileRoute.name: (routeData) {
      return _i19.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i5.EmptyRouterPage(),
      );
    },
    ProfileRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<ProfileRouteArgs>(
          orElse: () => ProfileRouteArgs(id: pathParams.getString('id')));
      return _i19.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i6.ProfilePage(
          key: args.key,
          id: args.id,
        ),
      );
    },
    AccountRoute.name: (routeData) {
      return _i19.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i7.AccountPage(),
      );
    },
    SettingsRoute.name: (routeData) {
      return _i19.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i8.SettingsPage(),
      );
    },
    RoomsTab.name: (routeData) {
      return _i19.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i5.EmptyRouterPage(),
      );
    },
    ParticipatingTab.name: (routeData) {
      return _i19.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i5.EmptyRouterPage(),
      );
    },
    MessagesTab.name: (routeData) {
      return _i19.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i5.EmptyRouterPage(),
      );
    },
    RoomDetailRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<RoomDetailRouteArgs>(
          orElse: () => RoomDetailRouteArgs(id: pathParams.getString('id')));
      return _i19.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i9.RoomDetailPage(
          key: args.key,
          id: args.id,
        ),
      );
    },
    RoomListRoute.name: (routeData) {
      return _i19.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i10.RoomListPage(),
      );
    },
    MessageRoomRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<MessageRoomRouteArgs>(
          orElse: () => MessageRoomRouteArgs(id: pathParams.getString('id')));
      return _i19.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i11.MessageRoomPage(
          key: args.key,
          id: args.id,
        ),
      );
    },
    ParticipatingRoomListRoute.name: (routeData) {
      return _i19.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i12.ParticipatingRoomListPage(),
      );
    },
    RequestConfirmationRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<RequestConfirmationRouteArgs>(
          orElse: () =>
              RequestConfirmationRouteArgs(id: pathParams.getInt('id')));
      return _i19.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i13.RequestConfirmationPage(
          key: args.key,
          id: args.id,
        ),
      );
    },
    MessageRoomListRoute.name: (routeData) {
      return _i19.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i14.MessageRoomListPage(),
      );
    },
    BasicProfileEntryRoute.name: (routeData) {
      return _i19.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i15.BasicProfileEntryPage(),
      );
    },
    DetailedProfileEntryRoute.name: (routeData) {
      return _i19.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i16.DetailedProfileEntryPage(),
      );
    },
    ProfileIconImageEntryRoute.name: (routeData) {
      return _i19.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i17.ProfileIconImageEntryPage(),
      );
    },
    EntryProfileSubImageRoute.name: (routeData) {
      return _i19.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i18.EntryProfileSubImagePage(),
      );
    },
  };

  @override
  List<_i19.RouteConfig> get routes => [
        _i19.RouteConfig(
          HomeRouter.name,
          path: '/',
          guards: [
            authGuard,
            checkIfMyProfileExists,
          ],
          children: [
            _i19.RouteConfig(
              RoomsTab.name,
              path: 'rooms',
              parent: HomeRouter.name,
              children: [
                _i19.RouteConfig(
                  RoomDetailRoute.name,
                  path: 'room/:id',
                  parent: RoomsTab.name,
                ),
                _i19.RouteConfig(
                  RoomListRoute.name,
                  path: '',
                  parent: RoomsTab.name,
                ),
              ],
            ),
            _i19.RouteConfig(
              ParticipatingTab.name,
              path: 'participating-rooms',
              parent: HomeRouter.name,
              children: [
                _i19.RouteConfig(
                  RoomDetailRoute.name,
                  path: 'room/:id',
                  parent: ParticipatingTab.name,
                ),
                _i19.RouteConfig(
                  MessageRoomRoute.name,
                  path: 'message-room/:id',
                  parent: ParticipatingTab.name,
                ),
                _i19.RouteConfig(
                  ParticipatingRoomListRoute.name,
                  path: '',
                  parent: ParticipatingTab.name,
                ),
                _i19.RouteConfig(
                  RequestConfirmationRoute.name,
                  path: 'request-confirmation/:id',
                  parent: ParticipatingTab.name,
                ),
              ],
            ),
            _i19.RouteConfig(
              MessagesTab.name,
              path: 'rooms',
              parent: HomeRouter.name,
              children: [
                _i19.RouteConfig(
                  MessageRoomRoute.name,
                  path: 'message-room/:id',
                  parent: MessagesTab.name,
                ),
                _i19.RouteConfig(
                  MessageRoomListRoute.name,
                  path: '',
                  parent: MessagesTab.name,
                ),
              ],
            ),
          ],
        ),
        _i19.RouteConfig(
          LoginRoute.name,
          path: '/login',
        ),
        _i19.RouteConfig(
          DebugRoute.name,
          path: '/debug',
        ),
        _i19.RouteConfig(
          RoomCreateRoute.name,
          path: 'create-room',
        ),
        _i19.RouteConfig(
          CreateProfileRoute.name,
          path: 'create-profile',
          guards: [authGuard],
          children: [
            _i19.RouteConfig(
              '#redirect',
              path: '',
              parent: CreateProfileRoute.name,
              redirectTo: 'basic',
              fullMatch: true,
            ),
            _i19.RouteConfig(
              BasicProfileEntryRoute.name,
              path: 'basic',
              parent: CreateProfileRoute.name,
            ),
            _i19.RouteConfig(
              DetailedProfileEntryRoute.name,
              path: 'detail',
              parent: CreateProfileRoute.name,
            ),
            _i19.RouteConfig(
              ProfileIconImageEntryRoute.name,
              path: 'icon-image',
              parent: CreateProfileRoute.name,
            ),
            _i19.RouteConfig(
              EntryProfileSubImageRoute.name,
              path: 'sub-image',
              parent: CreateProfileRoute.name,
            ),
          ],
        ),
        _i19.RouteConfig(
          ProfileRoute.name,
          path: 'profile/:id',
        ),
        _i19.RouteConfig(
          AccountRoute.name,
          path: 'account',
        ),
        _i19.RouteConfig(
          SettingsRoute.name,
          path: 'account',
        ),
      ];
}

/// generated route for
/// [_i1.MyBottomNavigationBar]
class HomeRouter extends _i19.PageRouteInfo<void> {
  const HomeRouter({List<_i19.PageRouteInfo>? children})
      : super(
          HomeRouter.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'HomeRouter';
}

/// generated route for
/// [_i2.LoginPage]
class LoginRoute extends _i19.PageRouteInfo<void> {
  const LoginRoute()
      : super(
          LoginRoute.name,
          path: '/login',
        );

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i3.DebugPage]
class DebugRoute extends _i19.PageRouteInfo<void> {
  const DebugRoute()
      : super(
          DebugRoute.name,
          path: '/debug',
        );

  static const String name = 'DebugRoute';
}

/// generated route for
/// [_i4.RoomCreatePage]
class RoomCreateRoute extends _i19.PageRouteInfo<void> {
  const RoomCreateRoute()
      : super(
          RoomCreateRoute.name,
          path: 'create-room',
        );

  static const String name = 'RoomCreateRoute';
}

/// generated route for
/// [_i5.EmptyRouterPage]
class CreateProfileRoute extends _i19.PageRouteInfo<void> {
  const CreateProfileRoute({List<_i19.PageRouteInfo>? children})
      : super(
          CreateProfileRoute.name,
          path: 'create-profile',
          initialChildren: children,
        );

  static const String name = 'CreateProfileRoute';
}

/// generated route for
/// [_i6.ProfilePage]
class ProfileRoute extends _i19.PageRouteInfo<ProfileRouteArgs> {
  ProfileRoute({
    _i20.Key? key,
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

  final _i20.Key? key;

  final String id;

  @override
  String toString() {
    return 'ProfileRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i7.AccountPage]
class AccountRoute extends _i19.PageRouteInfo<void> {
  const AccountRoute()
      : super(
          AccountRoute.name,
          path: 'account',
        );

  static const String name = 'AccountRoute';
}

/// generated route for
/// [_i8.SettingsPage]
class SettingsRoute extends _i19.PageRouteInfo<void> {
  const SettingsRoute()
      : super(
          SettingsRoute.name,
          path: 'account',
        );

  static const String name = 'SettingsRoute';
}

/// generated route for
/// [_i5.EmptyRouterPage]
class RoomsTab extends _i19.PageRouteInfo<void> {
  const RoomsTab({List<_i19.PageRouteInfo>? children})
      : super(
          RoomsTab.name,
          path: 'rooms',
          initialChildren: children,
        );

  static const String name = 'RoomsTab';
}

/// generated route for
/// [_i5.EmptyRouterPage]
class ParticipatingTab extends _i19.PageRouteInfo<void> {
  const ParticipatingTab({List<_i19.PageRouteInfo>? children})
      : super(
          ParticipatingTab.name,
          path: 'participating-rooms',
          initialChildren: children,
        );

  static const String name = 'ParticipatingTab';
}

/// generated route for
/// [_i5.EmptyRouterPage]
class MessagesTab extends _i19.PageRouteInfo<void> {
  const MessagesTab({List<_i19.PageRouteInfo>? children})
      : super(
          MessagesTab.name,
          path: 'rooms',
          initialChildren: children,
        );

  static const String name = 'MessagesTab';
}

/// generated route for
/// [_i9.RoomDetailPage]
class RoomDetailRoute extends _i19.PageRouteInfo<RoomDetailRouteArgs> {
  RoomDetailRoute({
    _i20.Key? key,
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

  final _i20.Key? key;

  final String id;

  @override
  String toString() {
    return 'RoomDetailRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i10.RoomListPage]
class RoomListRoute extends _i19.PageRouteInfo<void> {
  const RoomListRoute()
      : super(
          RoomListRoute.name,
          path: '',
        );

  static const String name = 'RoomListRoute';
}

/// generated route for
/// [_i11.MessageRoomPage]
class MessageRoomRoute extends _i19.PageRouteInfo<MessageRoomRouteArgs> {
  MessageRoomRoute({
    _i20.Key? key,
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

  final _i20.Key? key;

  final String id;

  @override
  String toString() {
    return 'MessageRoomRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i12.ParticipatingRoomListPage]
class ParticipatingRoomListRoute extends _i19.PageRouteInfo<void> {
  const ParticipatingRoomListRoute()
      : super(
          ParticipatingRoomListRoute.name,
          path: '',
        );

  static const String name = 'ParticipatingRoomListRoute';
}

/// generated route for
/// [_i13.RequestConfirmationPage]
class RequestConfirmationRoute
    extends _i19.PageRouteInfo<RequestConfirmationRouteArgs> {
  RequestConfirmationRoute({
    _i20.Key? key,
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

  final _i20.Key? key;

  final int id;

  @override
  String toString() {
    return 'RequestConfirmationRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i14.MessageRoomListPage]
class MessageRoomListRoute extends _i19.PageRouteInfo<void> {
  const MessageRoomListRoute()
      : super(
          MessageRoomListRoute.name,
          path: '',
        );

  static const String name = 'MessageRoomListRoute';
}

/// generated route for
/// [_i15.BasicProfileEntryPage]
class BasicProfileEntryRoute extends _i19.PageRouteInfo<void> {
  const BasicProfileEntryRoute()
      : super(
          BasicProfileEntryRoute.name,
          path: 'basic',
        );

  static const String name = 'BasicProfileEntryRoute';
}

/// generated route for
/// [_i16.DetailedProfileEntryPage]
class DetailedProfileEntryRoute extends _i19.PageRouteInfo<void> {
  const DetailedProfileEntryRoute()
      : super(
          DetailedProfileEntryRoute.name,
          path: 'detail',
        );

  static const String name = 'DetailedProfileEntryRoute';
}

/// generated route for
/// [_i17.ProfileIconImageEntryPage]
class ProfileIconImageEntryRoute extends _i19.PageRouteInfo<void> {
  const ProfileIconImageEntryRoute()
      : super(
          ProfileIconImageEntryRoute.name,
          path: 'icon-image',
        );

  static const String name = 'ProfileIconImageEntryRoute';
}

/// generated route for
/// [_i18.EntryProfileSubImagePage]
class EntryProfileSubImageRoute extends _i19.PageRouteInfo<void> {
  const EntryProfileSubImageRoute()
      : super(
          EntryProfileSubImageRoute.name,
          path: 'sub-image',
        );

  static const String name = 'EntryProfileSubImageRoute';
}
