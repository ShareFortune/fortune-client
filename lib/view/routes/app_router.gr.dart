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
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/material.dart' as _i8;
import 'package:fortune_client/view/pages/auth/sign_in/sign_in_page.dart'
    as _i1;
import 'package:fortune_client/view/pages/message/message_room_list/message_room_list_page.dart'
    as _i6;
import 'package:fortune_client/view/pages/profile/create/profile_create_page.dart'
    as _i2;
import 'package:fortune_client/view/pages/rooms/room_join_list/room_join_list_page.dart'
    as _i5;
import 'package:fortune_client/view/pages/rooms/room_list/room_list_page.dart'
    as _i4;
import 'package:fortune_client/view/routes/route_guard.dart' as _i9;
import 'package:fortune_client/view/widgets/navigation_bar.dart' as _i3;

class AppRouter extends _i7.RootStackRouter {
  AppRouter({
    _i8.GlobalKey<_i8.NavigatorState>? navigatorKey,
    required this.authGuard,
  }) : super(navigatorKey);

  final _i9.AuthGuard authGuard;

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    SignInRoute.name: (routeData) {
      final args = routeData.argsAs<SignInRouteArgs>();
      return _i7.AdaptivePage<dynamic>(
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
      return _i7.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i2.ProfileCreatePage(key: args.key),
      );
    },
    NavigationBar.name: (routeData) {
      return _i7.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i3.NavigationBar(),
      );
    },
    RoomListRoute.name: (routeData) {
      return _i7.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i4.RoomListPage(),
      );
    },
    RoomJoinListRoute.name: (routeData) {
      return _i7.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i5.RoomJoinListPage(),
      );
    },
    MessageRoomListRoute.name: (routeData) {
      return _i7.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i6.MessageRoomListPage(),
      );
    },
  };

  @override
  List<_i7.RouteConfig> get routes => [
        _i7.RouteConfig(
          SignInRoute.name,
          path: '/sign_in',
        ),
        _i7.RouteConfig(
          ProfileCreateRoute.name,
          path: '/profile_create',
        ),
        _i7.RouteConfig(
          NavigationBar.name,
          path: '/',
          guards: [authGuard],
          children: [
            _i7.RouteConfig(
              RoomListRoute.name,
              path: 'rooms_search',
              parent: NavigationBar.name,
            ),
            _i7.RouteConfig(
              RoomJoinListRoute.name,
              path: 'rooms',
              parent: NavigationBar.name,
            ),
            _i7.RouteConfig(
              MessageRoomListRoute.name,
              path: 'message_rooms',
              parent: NavigationBar.name,
            ),
          ],
        ),
      ];
}

/// generated route for
/// [_i1.SignInPage]
class SignInRoute extends _i7.PageRouteInfo<SignInRouteArgs> {
  SignInRoute({
    _i8.Key? key,
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

  final _i8.Key? key;

  final dynamic Function(bool) onResult;

  @override
  String toString() {
    return 'SignInRouteArgs{key: $key, onResult: $onResult}';
  }
}

/// generated route for
/// [_i2.ProfileCreatePage]
class ProfileCreateRoute extends _i7.PageRouteInfo<ProfileCreateRouteArgs> {
  ProfileCreateRoute({_i8.Key? key})
      : super(
          ProfileCreateRoute.name,
          path: '/profile_create',
          args: ProfileCreateRouteArgs(key: key),
        );

  static const String name = 'ProfileCreateRoute';
}

class ProfileCreateRouteArgs {
  const ProfileCreateRouteArgs({this.key});

  final _i8.Key? key;

  @override
  String toString() {
    return 'ProfileCreateRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i3.NavigationBar]
class NavigationBar extends _i7.PageRouteInfo<void> {
  const NavigationBar({List<_i7.PageRouteInfo>? children})
      : super(
          NavigationBar.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'NavigationBar';
}

/// generated route for
/// [_i4.RoomListPage]
class RoomListRoute extends _i7.PageRouteInfo<void> {
  const RoomListRoute()
      : super(
          RoomListRoute.name,
          path: 'rooms_search',
        );

  static const String name = 'RoomListRoute';
}

/// generated route for
/// [_i5.RoomJoinListPage]
class RoomJoinListRoute extends _i7.PageRouteInfo<void> {
  const RoomJoinListRoute()
      : super(
          RoomJoinListRoute.name,
          path: 'rooms',
        );

  static const String name = 'RoomJoinListRoute';
}

/// generated route for
/// [_i6.MessageRoomListPage]
class MessageRoomListRoute extends _i7.PageRouteInfo<void> {
  const MessageRoomListRoute()
      : super(
          MessageRoomListRoute.name,
          path: 'message_rooms',
        );

  static const String name = 'MessageRoomListRoute';
}
