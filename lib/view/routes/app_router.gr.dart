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
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/material.dart' as _i9;
import 'package:fortune_client/view/common/bottom_navigation_bar/bottom_navigation_bar.dart'
    as _i3;
import 'package:fortune_client/view/pages/account/account/account_page.dart'
    as _i7;
import 'package:fortune_client/view/pages/auth/sign_in/sign_in_page.dart'
    as _i1;
import 'package:fortune_client/view/pages/message/message_room_list/message_room_list_page.dart'
    as _i6;
import 'package:fortune_client/view/pages/profile/create/profile_create_page.dart'
    as _i2;
import 'package:fortune_client/view/pages/rooms/participating_room_list/participating_room_list_page.dart'
    as _i5;
import 'package:fortune_client/view/pages/rooms/room_list/room_list_page.dart'
    as _i4;
import 'package:fortune_client/view/routes/route_guard.dart' as _i10;

class AppRouter extends _i8.RootStackRouter {
  AppRouter({
    _i9.GlobalKey<_i9.NavigatorState>? navigatorKey,
    required this.authGuard,
  }) : super(navigatorKey);

  final _i10.AuthGuard authGuard;

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    SignInRoute.name: (routeData) {
      final args = routeData.argsAs<SignInRouteArgs>();
      return _i8.AdaptivePage<dynamic>(
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
      return _i8.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i2.ProfileCreatePage(key: args.key),
      );
    },
    MyBottomNavigationBar.name: (routeData) {
      return _i8.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i3.MyBottomNavigationBar(),
      );
    },
    RoomListRoute.name: (routeData) {
      return _i8.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i4.RoomListPage(),
      );
    },
    ParticipatingRoomListRoute.name: (routeData) {
      return _i8.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i5.ParticipatingRoomListPage(),
      );
    },
    MessageRoomListRoute.name: (routeData) {
      return _i8.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i6.MessageRoomListPage(),
      );
    },
    AccountRoute.name: (routeData) {
      return _i8.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i7.AccountPage(),
      );
    },
  };

  @override
  List<_i8.RouteConfig> get routes => [
        _i8.RouteConfig(
          SignInRoute.name,
          path: '/sign_in',
        ),
        _i8.RouteConfig(
          ProfileCreateRoute.name,
          path: '/profile_create',
        ),
        _i8.RouteConfig(
          MyBottomNavigationBar.name,
          path: '/',
          guards: [authGuard],
          children: [
            _i8.RouteConfig(
              RoomListRoute.name,
              path: 'rooms_search',
              parent: MyBottomNavigationBar.name,
            ),
            _i8.RouteConfig(
              ParticipatingRoomListRoute.name,
              path: 'rooms',
              parent: MyBottomNavigationBar.name,
            ),
            _i8.RouteConfig(
              MessageRoomListRoute.name,
              path: 'message_rooms',
              parent: MyBottomNavigationBar.name,
            ),
            _i8.RouteConfig(
              AccountRoute.name,
              path: 'account',
              parent: MyBottomNavigationBar.name,
            ),
          ],
        ),
      ];
}

/// generated route for
/// [_i1.SignInPage]
class SignInRoute extends _i8.PageRouteInfo<SignInRouteArgs> {
  SignInRoute({
    _i9.Key? key,
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

  final _i9.Key? key;

  final dynamic Function(bool) onResult;

  @override
  String toString() {
    return 'SignInRouteArgs{key: $key, onResult: $onResult}';
  }
}

/// generated route for
/// [_i2.ProfileCreatePage]
class ProfileCreateRoute extends _i8.PageRouteInfo<ProfileCreateRouteArgs> {
  ProfileCreateRoute({_i9.Key? key})
      : super(
          ProfileCreateRoute.name,
          path: '/profile_create',
          args: ProfileCreateRouteArgs(key: key),
        );

  static const String name = 'ProfileCreateRoute';
}

class ProfileCreateRouteArgs {
  const ProfileCreateRouteArgs({this.key});

  final _i9.Key? key;

  @override
  String toString() {
    return 'ProfileCreateRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i3.MyBottomNavigationBar]
class MyBottomNavigationBar extends _i8.PageRouteInfo<void> {
  const MyBottomNavigationBar({List<_i8.PageRouteInfo>? children})
      : super(
          MyBottomNavigationBar.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'MyBottomNavigationBar';
}

/// generated route for
/// [_i4.RoomListPage]
class RoomListRoute extends _i8.PageRouteInfo<void> {
  const RoomListRoute()
      : super(
          RoomListRoute.name,
          path: 'rooms_search',
        );

  static const String name = 'RoomListRoute';
}

/// generated route for
/// [_i5.ParticipatingRoomListPage]
class ParticipatingRoomListRoute extends _i8.PageRouteInfo<void> {
  const ParticipatingRoomListRoute()
      : super(
          ParticipatingRoomListRoute.name,
          path: 'rooms',
        );

  static const String name = 'ParticipatingRoomListRoute';
}

/// generated route for
/// [_i6.MessageRoomListPage]
class MessageRoomListRoute extends _i8.PageRouteInfo<void> {
  const MessageRoomListRoute()
      : super(
          MessageRoomListRoute.name,
          path: 'message_rooms',
        );

  static const String name = 'MessageRoomListRoute';
}

/// generated route for
/// [_i7.AccountPage]
class AccountRoute extends _i8.PageRouteInfo<void> {
  const AccountRoute()
      : super(
          AccountRoute.name,
          path: 'account',
        );

  static const String name = 'AccountRoute';
}
