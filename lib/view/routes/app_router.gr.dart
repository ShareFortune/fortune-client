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
import 'package:auto_route/auto_route.dart' as _i14;
import 'package:auto_route/empty_router_widgets.dart' as _i6;
import 'package:flutter/material.dart' as _i15;
import 'package:fortune_client/view/pages/account/account/account_page.dart'
    as _i10;
import 'package:fortune_client/view/pages/auth/sign_in/sign_in_page.dart'
    as _i1;
import 'package:fortune_client/view/pages/common/bottom_navigation_bar/bottom_navigation_bar.dart'
    as _i3;
import 'package:fortune_client/view/pages/message/message_room/message_room_page.dart'
    as _i13;
import 'package:fortune_client/view/pages/message/message_room_list/message_room_list_page.dart'
    as _i9;
import 'package:fortune_client/view/pages/profile/create/profile_create_page.dart'
    as _i2;
import 'package:fortune_client/view/pages/profile/profile/profile_page.dart'
    as _i5;
import 'package:fortune_client/view/pages/request/request_confirmation/request_confirmation_page.dart'
    as _i4;
import 'package:fortune_client/view/pages/rooms/create/room_create_page.dart'
    as _i8;
import 'package:fortune_client/view/pages/rooms/participating_room_list/participating_room_list_page.dart'
    as _i7;
import 'package:fortune_client/view/pages/rooms/room_detail/room_detail_page.dart'
    as _i12;
import 'package:fortune_client/view/pages/rooms/room_list/room_list_page.dart'
    as _i11;
import 'package:fortune_client/view/routes/route_guard.dart' as _i16;

class AppRouter extends _i14.RootStackRouter {
  AppRouter({
    _i15.GlobalKey<_i15.NavigatorState>? navigatorKey,
    required this.authGuard,
  }) : super(navigatorKey);

  final _i16.AuthGuard authGuard;

  @override
  final Map<String, _i14.PageFactory> pagesMap = {
    SignInRoute.name: (routeData) {
      final args = routeData.argsAs<SignInRouteArgs>();
      return _i14.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i1.SignInPage(
          key: args.key,
          onResult: args.onResult,
        ),
      );
    },
    ProfileCreateRoute.name: (routeData) {
      final args = routeData.argsAs<ProfileCreateRouteArgs>(
          orElse: () => const ProfileCreateRouteArgs());
      return _i14.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i2.ProfileCreatePage(key: args.key),
      );
    },
    MyBottomNavigationBar.name: (routeData) {
      return _i14.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i3.MyBottomNavigationBar(),
      );
    },
    RequestConfirmationRoute.name: (routeData) {
      return _i14.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i4.RequestConfirmationPage(),
      );
    },
    ProfileRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<ProfileRouteArgs>(
          orElse: () => ProfileRouteArgs(id: pathParams.getString('id')));
      return _i14.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i5.ProfilePage(
          key: args.key,
          id: args.id,
        ),
      );
    },
    RoomListRouter.name: (routeData) {
      return _i14.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i6.EmptyRouterPage(),
      );
    },
    ParticipatingRoomListRoute.name: (routeData) {
      return _i14.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i7.ParticipatingRoomListPage(),
      );
    },
    RoomCreateRoute.name: (routeData) {
      return _i14.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i8.RoomCreatePage(),
      );
    },
    MessageRoomListRoute.name: (routeData) {
      return _i14.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i9.MessageRoomListPage(),
      );
    },
    AccountRoute.name: (routeData) {
      return _i14.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i10.AccountPage(),
      );
    },
    RoomListRoute.name: (routeData) {
      return _i14.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i11.RoomListPage(),
      );
    },
    RoomDetailRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<RoomDetailRouteArgs>(
          orElse: () => RoomDetailRouteArgs(id: pathParams.getString('id')));
      return _i14.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i12.RoomDetailPage(
          key: args.key,
          id: args.id,
        ),
      );
    },
    MessageRoomRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<MessageRoomRouteArgs>(
          orElse: () => MessageRoomRouteArgs(id: pathParams.getString('id')));
      return _i14.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i13.MessageRoomPage(
          key: args.key,
          id: args.id,
        ),
      );
    },
  };

  @override
  List<_i14.RouteConfig> get routes => [
        _i14.RouteConfig(
          SignInRoute.name,
          path: '/sign_in',
        ),
        _i14.RouteConfig(
          ProfileCreateRoute.name,
          path: '/profile_create',
        ),
        _i14.RouteConfig(
          MyBottomNavigationBar.name,
          path: '/',
          guards: [authGuard],
          children: [
            _i14.RouteConfig(
              RoomListRouter.name,
              path: 'rooms',
              parent: MyBottomNavigationBar.name,
              children: [
                _i14.RouteConfig(
                  RoomListRoute.name,
                  path: '',
                  parent: RoomListRouter.name,
                ),
                _i14.RouteConfig(
                  RoomDetailRoute.name,
                  path: ':id',
                  parent: RoomListRouter.name,
                ),
              ],
            ),
            _i14.RouteConfig(
              ParticipatingRoomListRoute.name,
              path: 'rooms',
              parent: MyBottomNavigationBar.name,
            ),
            _i14.RouteConfig(
              RoomCreateRoute.name,
              path: 'room_create',
              parent: MyBottomNavigationBar.name,
            ),
            _i14.RouteConfig(
              MessageRoomListRoute.name,
              path: 'message_rooms',
              parent: MyBottomNavigationBar.name,
              children: [
                _i14.RouteConfig(
                  MessageRoomRoute.name,
                  path: 'messageRoom:id',
                  parent: MessageRoomListRoute.name,
                )
              ],
            ),
            _i14.RouteConfig(
              AccountRoute.name,
              path: 'account',
              parent: MyBottomNavigationBar.name,
            ),
          ],
        ),
        _i14.RouteConfig(
          RequestConfirmationRoute.name,
          path: '/request_confirmation',
        ),
        _i14.RouteConfig(
          ProfileRoute.name,
          path: '/profile/:id',
        ),
      ];
}

/// generated route for
/// [_i1.SignInPage]
class SignInRoute extends _i14.PageRouteInfo<SignInRouteArgs> {
  SignInRoute({
    _i15.Key? key,
    required dynamic Function(bool) onResult,
  }) : super(
          SignInRoute.name,
          path: '/sign_in',
          args: SignInRouteArgs(
            key: key,
            onResult: onResult,
          ),
        );

  static const String name = 'SignInRoute';
}

class SignInRouteArgs {
  const SignInRouteArgs({
    this.key,
    required this.onResult,
  });

  final _i15.Key? key;

  final dynamic Function(bool) onResult;

  @override
  String toString() {
    return 'SignInRouteArgs{key: $key, onResult: $onResult}';
  }
}

/// generated route for
/// [_i2.ProfileCreatePage]
class ProfileCreateRoute extends _i14.PageRouteInfo<ProfileCreateRouteArgs> {
  ProfileCreateRoute({_i15.Key? key})
      : super(
          ProfileCreateRoute.name,
          path: '/profile_create',
          args: ProfileCreateRouteArgs(key: key),
        );

  static const String name = 'ProfileCreateRoute';
}

class ProfileCreateRouteArgs {
  const ProfileCreateRouteArgs({this.key});

  final _i15.Key? key;

  @override
  String toString() {
    return 'ProfileCreateRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i3.MyBottomNavigationBar]
class MyBottomNavigationBar extends _i14.PageRouteInfo<void> {
  const MyBottomNavigationBar({List<_i14.PageRouteInfo>? children})
      : super(
          MyBottomNavigationBar.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'MyBottomNavigationBar';
}

/// generated route for
/// [_i4.RequestConfirmationPage]
class RequestConfirmationRoute extends _i14.PageRouteInfo<void> {
  const RequestConfirmationRoute()
      : super(
          RequestConfirmationRoute.name,
          path: '/request_confirmation',
        );

  static const String name = 'RequestConfirmationRoute';
}

/// generated route for
/// [_i5.ProfilePage]
class ProfileRoute extends _i14.PageRouteInfo<ProfileRouteArgs> {
  ProfileRoute({
    _i15.Key? key,
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

  final _i15.Key? key;

  final String id;

  @override
  String toString() {
    return 'ProfileRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i6.EmptyRouterPage]
class RoomListRouter extends _i14.PageRouteInfo<void> {
  const RoomListRouter({List<_i14.PageRouteInfo>? children})
      : super(
          RoomListRouter.name,
          path: 'rooms',
          initialChildren: children,
        );

  static const String name = 'RoomListRouter';
}

/// generated route for
/// [_i7.ParticipatingRoomListPage]
class ParticipatingRoomListRoute extends _i14.PageRouteInfo<void> {
  const ParticipatingRoomListRoute()
      : super(
          ParticipatingRoomListRoute.name,
          path: 'rooms',
        );

  static const String name = 'ParticipatingRoomListRoute';
}

/// generated route for
/// [_i8.RoomCreatePage]
class RoomCreateRoute extends _i14.PageRouteInfo<void> {
  const RoomCreateRoute()
      : super(
          RoomCreateRoute.name,
          path: 'room_create',
        );

  static const String name = 'RoomCreateRoute';
}

/// generated route for
/// [_i9.MessageRoomListPage]
class MessageRoomListRoute extends _i14.PageRouteInfo<void> {
  const MessageRoomListRoute({List<_i14.PageRouteInfo>? children})
      : super(
          MessageRoomListRoute.name,
          path: 'message_rooms',
          initialChildren: children,
        );

  static const String name = 'MessageRoomListRoute';
}

/// generated route for
/// [_i10.AccountPage]
class AccountRoute extends _i14.PageRouteInfo<void> {
  const AccountRoute()
      : super(
          AccountRoute.name,
          path: 'account',
        );

  static const String name = 'AccountRoute';
}

/// generated route for
/// [_i11.RoomListPage]
class RoomListRoute extends _i14.PageRouteInfo<void> {
  const RoomListRoute()
      : super(
          RoomListRoute.name,
          path: '',
        );

  static const String name = 'RoomListRoute';
}

/// generated route for
/// [_i12.RoomDetailPage]
class RoomDetailRoute extends _i14.PageRouteInfo<RoomDetailRouteArgs> {
  RoomDetailRoute({
    _i15.Key? key,
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

  final _i15.Key? key;

  final String id;

  @override
  String toString() {
    return 'RoomDetailRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i13.MessageRoomPage]
class MessageRoomRoute extends _i14.PageRouteInfo<MessageRoomRouteArgs> {
  MessageRoomRoute({
    _i15.Key? key,
    required String id,
  }) : super(
          MessageRoomRoute.name,
          path: 'messageRoom:id',
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

  final _i15.Key? key;

  final String id;

  @override
  String toString() {
    return 'MessageRoomRouteArgs{key: $key, id: $id}';
  }
}
