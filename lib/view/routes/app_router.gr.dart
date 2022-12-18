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
import 'package:auto_route/auto_route.dart' as _i15;
import 'package:auto_route/empty_router_widgets.dart' as _i2;
import 'package:flutter/material.dart' as _i16;
import 'package:fortune_client/view/pages/account/account/account_page.dart'
    as _i7;
import 'package:fortune_client/view/pages/auth/login/login_page.dart' as _i1;
import 'package:fortune_client/view/pages/common/bottom_navigation_bar/bottom_navigation_bar.dart'
    as _i4;
import 'package:fortune_client/view/pages/message/message_room/message_room_page.dart'
    as _i14;
import 'package:fortune_client/view/pages/message/message_room_list/message_room_list_page.dart'
    as _i13;
import 'package:fortune_client/view/pages/profile/create/entry_basic_profile/basic_profile_entry_page.dart'
    as _i5;
import 'package:fortune_client/view/pages/profile/create/entry_detailed_profile/detailed_profile_entry_page.dart'
    as _i6;
import 'package:fortune_client/view/pages/profile/profile/profile_page.dart'
    as _i3;
import 'package:fortune_client/view/pages/request/request_confirmation/request_confirmation_page.dart'
    as _i11;
import 'package:fortune_client/view/pages/rooms/create/room_create_page.dart'
    as _i12;
import 'package:fortune_client/view/pages/rooms/participating_room_list/participating_room_list_page.dart'
    as _i10;
import 'package:fortune_client/view/pages/rooms/room_detail/room_detail_page.dart'
    as _i9;
import 'package:fortune_client/view/pages/rooms/room_list/room_list_page.dart'
    as _i8;
import 'package:fortune_client/view/routes/route_guard.dart' as _i17;

class AppRouter extends _i15.RootStackRouter {
  AppRouter({
    _i16.GlobalKey<_i16.NavigatorState>? navigatorKey,
    required this.authGuard,
    required this.checkIfMyProfileExists,
  }) : super(navigatorKey);

  final _i17.AuthGuard authGuard;

  final _i17.CheckIfMyProfileExists checkIfMyProfileExists;

  @override
  final Map<String, _i15.PageFactory> pagesMap = {
    LoginRoute.name: (routeData) {
      return _i15.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i1.LoginPage(),
      );
    },
    ProfileCreateRoute.name: (routeData) {
      return _i15.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i2.EmptyRouterPage(),
      );
    },
    ProfileRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<ProfileRouteArgs>(
          orElse: () => ProfileRouteArgs(id: pathParams.getString('id')));
      return _i15.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i3.ProfilePage(
          key: args.key,
          id: args.id,
        ),
      );
    },
    HomeRoute.name: (routeData) {
      return _i15.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i4.MyBottomNavigationBar(),
      );
    },
    BasicProfileEntryRoute.name: (routeData) {
      return _i15.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i5.BasicProfileEntryPage(),
      );
    },
    ProfileCreationManagementRoute.name: (routeData) {
      final args = routeData.argsAs<ProfileCreationManagementRouteArgs>(
          orElse: () => const ProfileCreationManagementRouteArgs());
      return _i15.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i6.DetailedProfileEntryPage(key: args.key),
      );
    },
    RoomsRoute.name: (routeData) {
      return _i15.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i2.EmptyRouterPage(),
      );
    },
    ParticipatingRoomsRoute.name: (routeData) {
      return _i15.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i2.EmptyRouterPage(),
      );
    },
    CreateRoomRoute.name: (routeData) {
      return _i15.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i2.EmptyRouterPage(),
      );
    },
    MessageRoomsRoute.name: (routeData) {
      return _i15.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i2.EmptyRouterPage(),
      );
    },
    AccountRoute.name: (routeData) {
      return _i15.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i7.AccountPage(),
      );
    },
    RoomListRoute.name: (routeData) {
      return _i15.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i8.RoomListPage(),
      );
    },
    RoomDetailRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<RoomDetailRouteArgs>(
          orElse: () => RoomDetailRouteArgs(id: pathParams.getString('id')));
      return _i15.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i9.RoomDetailPage(
          key: args.key,
          id: args.id,
        ),
      );
    },
    ParticipatingRoomListRoute.name: (routeData) {
      return _i15.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i10.ParticipatingRoomListPage(),
      );
    },
    RequestConfirmationRoute.name: (routeData) {
      return _i15.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i11.RequestConfirmationPage(),
      );
    },
    RoomCreateRoute.name: (routeData) {
      return _i15.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i12.RoomCreatePage(),
      );
    },
    MessageRoomListRoute.name: (routeData) {
      return _i15.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i13.MessageRoomListPage(),
      );
    },
    MessageRoomRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<MessageRoomRouteArgs>(
          orElse: () => MessageRoomRouteArgs(id: pathParams.getString('id')));
      return _i15.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i14.MessageRoomPage(
          key: args.key,
          id: args.id,
        ),
      );
    },
  };

  @override
  List<_i15.RouteConfig> get routes => [
        _i15.RouteConfig(
          LoginRoute.name,
          path: '/login',
        ),
        _i15.RouteConfig(
          ProfileCreateRoute.name,
          path: '/create-profile',
          guards: [authGuard],
          children: [
            _i15.RouteConfig(
              BasicProfileEntryRoute.name,
              path: '',
              parent: ProfileCreateRoute.name,
            ),
            _i15.RouteConfig(
              ProfileCreationManagementRoute.name,
              path: 'management',
              parent: ProfileCreateRoute.name,
            ),
          ],
        ),
        _i15.RouteConfig(
          ProfileRoute.name,
          path: '/profile/:id',
          guards: [
            authGuard,
            checkIfMyProfileExists,
          ],
        ),
        _i15.RouteConfig(
          HomeRoute.name,
          path: '/',
          guards: [
            authGuard,
            checkIfMyProfileExists,
          ],
          children: [
            _i15.RouteConfig(
              RoomsRoute.name,
              path: 'rooms',
              parent: HomeRoute.name,
              children: [
                _i15.RouteConfig(
                  RoomListRoute.name,
                  path: '',
                  parent: RoomsRoute.name,
                ),
                _i15.RouteConfig(
                  RoomDetailRoute.name,
                  path: ':id',
                  parent: RoomsRoute.name,
                ),
              ],
            ),
            _i15.RouteConfig(
              ParticipatingRoomsRoute.name,
              path: 'participating-rooms',
              parent: HomeRoute.name,
              children: [
                _i15.RouteConfig(
                  ParticipatingRoomListRoute.name,
                  path: '',
                  parent: ParticipatingRoomsRoute.name,
                ),
                _i15.RouteConfig(
                  RequestConfirmationRoute.name,
                  path: 'request-confirmation:id',
                  parent: ParticipatingRoomsRoute.name,
                  guards: [authGuard],
                ),
              ],
            ),
            _i15.RouteConfig(
              CreateRoomRoute.name,
              path: 'create-room',
              parent: HomeRoute.name,
              children: [
                _i15.RouteConfig(
                  RoomCreateRoute.name,
                  path: '',
                  parent: CreateRoomRoute.name,
                )
              ],
            ),
            _i15.RouteConfig(
              MessageRoomsRoute.name,
              path: 'message-rooms',
              parent: HomeRoute.name,
              children: [
                _i15.RouteConfig(
                  MessageRoomListRoute.name,
                  path: '',
                  parent: MessageRoomsRoute.name,
                ),
                _i15.RouteConfig(
                  MessageRoomRoute.name,
                  path: ':id',
                  parent: MessageRoomsRoute.name,
                ),
              ],
            ),
            _i15.RouteConfig(
              AccountRoute.name,
              path: 'account',
              parent: HomeRoute.name,
            ),
          ],
        ),
      ];
}

/// generated route for
/// [_i1.LoginPage]
class LoginRoute extends _i15.PageRouteInfo<void> {
  const LoginRoute()
      : super(
          LoginRoute.name,
          path: '/login',
        );

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class ProfileCreateRoute extends _i15.PageRouteInfo<void> {
  const ProfileCreateRoute({List<_i15.PageRouteInfo>? children})
      : super(
          ProfileCreateRoute.name,
          path: '/create-profile',
          initialChildren: children,
        );

  static const String name = 'ProfileCreateRoute';
}

/// generated route for
/// [_i3.ProfilePage]
class ProfileRoute extends _i15.PageRouteInfo<ProfileRouteArgs> {
  ProfileRoute({
    _i16.Key? key,
    required String id,
  }) : super(
          ProfileRoute.name,
          path: '/profile/:id',
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

  final _i16.Key? key;

  final String id;

  @override
  String toString() {
    return 'ProfileRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i4.MyBottomNavigationBar]
class HomeRoute extends _i15.PageRouteInfo<void> {
  const HomeRoute({List<_i15.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i5.BasicProfileEntryPage]
class BasicProfileEntryRoute extends _i15.PageRouteInfo<void> {
  const BasicProfileEntryRoute()
      : super(
          BasicProfileEntryRoute.name,
          path: '',
        );

  static const String name = 'BasicProfileEntryRoute';
}

/// generated route for
/// [_i6.ProfileCreationManagementPage]
class ProfileCreationManagementRoute
    extends _i15.PageRouteInfo<ProfileCreationManagementRouteArgs> {
  ProfileCreationManagementRoute({_i16.Key? key})
      : super(
          ProfileCreationManagementRoute.name,
          path: 'management',
          args: ProfileCreationManagementRouteArgs(key: key),
        );

  static const String name = 'ProfileCreationManagementRoute';
}

class ProfileCreationManagementRouteArgs {
  const ProfileCreationManagementRouteArgs({this.key});

  final _i16.Key? key;

  @override
  String toString() {
    return 'ProfileCreationManagementRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i2.EmptyRouterPage]
class RoomsRoute extends _i15.PageRouteInfo<void> {
  const RoomsRoute({List<_i15.PageRouteInfo>? children})
      : super(
          RoomsRoute.name,
          path: 'rooms',
          initialChildren: children,
        );

  static const String name = 'RoomsRoute';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class ParticipatingRoomsRoute extends _i15.PageRouteInfo<void> {
  const ParticipatingRoomsRoute({List<_i15.PageRouteInfo>? children})
      : super(
          ParticipatingRoomsRoute.name,
          path: 'participating-rooms',
          initialChildren: children,
        );

  static const String name = 'ParticipatingRoomsRoute';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class CreateRoomRoute extends _i15.PageRouteInfo<void> {
  const CreateRoomRoute({List<_i15.PageRouteInfo>? children})
      : super(
          CreateRoomRoute.name,
          path: 'create-room',
          initialChildren: children,
        );

  static const String name = 'CreateRoomRoute';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class MessageRoomsRoute extends _i15.PageRouteInfo<void> {
  const MessageRoomsRoute({List<_i15.PageRouteInfo>? children})
      : super(
          MessageRoomsRoute.name,
          path: 'message-rooms',
          initialChildren: children,
        );

  static const String name = 'MessageRoomsRoute';
}

/// generated route for
/// [_i7.AccountPage]
class AccountRoute extends _i15.PageRouteInfo<void> {
  const AccountRoute()
      : super(
          AccountRoute.name,
          path: 'account',
        );

  static const String name = 'AccountRoute';
}

/// generated route for
/// [_i8.RoomListPage]
class RoomListRoute extends _i15.PageRouteInfo<void> {
  const RoomListRoute()
      : super(
          RoomListRoute.name,
          path: '',
        );

  static const String name = 'RoomListRoute';
}

/// generated route for
/// [_i9.RoomDetailPage]
class RoomDetailRoute extends _i15.PageRouteInfo<RoomDetailRouteArgs> {
  RoomDetailRoute({
    _i16.Key? key,
    required String id,
  }) : super(
          RoomDetailRoute.name,
          path: ':id',
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

  final _i16.Key? key;

  final String id;

  @override
  String toString() {
    return 'RoomDetailRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i10.ParticipatingRoomListPage]
class ParticipatingRoomListRoute extends _i15.PageRouteInfo<void> {
  const ParticipatingRoomListRoute()
      : super(
          ParticipatingRoomListRoute.name,
          path: '',
        );

  static const String name = 'ParticipatingRoomListRoute';
}

/// generated route for
/// [_i11.RequestConfirmationPage]
class RequestConfirmationRoute extends _i15.PageRouteInfo<void> {
  const RequestConfirmationRoute()
      : super(
          RequestConfirmationRoute.name,
          path: 'request-confirmation:id',
        );

  static const String name = 'RequestConfirmationRoute';
}

/// generated route for
/// [_i12.RoomCreatePage]
class RoomCreateRoute extends _i15.PageRouteInfo<void> {
  const RoomCreateRoute()
      : super(
          RoomCreateRoute.name,
          path: '',
        );

  static const String name = 'RoomCreateRoute';
}

/// generated route for
/// [_i13.MessageRoomListPage]
class MessageRoomListRoute extends _i15.PageRouteInfo<void> {
  const MessageRoomListRoute()
      : super(
          MessageRoomListRoute.name,
          path: '',
        );

  static const String name = 'MessageRoomListRoute';
}

/// generated route for
/// [_i14.MessageRoomPage]
class MessageRoomRoute extends _i15.PageRouteInfo<MessageRoomRouteArgs> {
  MessageRoomRoute({
    _i16.Key? key,
    required String id,
  }) : super(
          MessageRoomRoute.name,
          path: ':id',
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

  final _i16.Key? key;

  final String id;

  @override
  String toString() {
    return 'MessageRoomRouteArgs{key: $key, id: $id}';
  }
}
