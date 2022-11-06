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
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;
import 'package:fortune_client/view/pages/auth/sign_in/sign_in_page.dart'
    as _i1;
import 'package:fortune_client/view/pages/message/message_room_list/message_room_list_page.dart'
    as _i5;
import 'package:fortune_client/view/pages/rooms/room_join_list/room_join_list_page.dart'
    as _i4;
import 'package:fortune_client/view/pages/rooms/room_list/room_list_page.dart'
    as _i3;
import 'package:fortune_client/view/routes/route_guard.dart' as _i8;
import 'package:fortune_client/view/widgets/navigation_bar.dart' as _i2;

class AppRouter extends _i6.RootStackRouter {
  AppRouter({
    _i7.GlobalKey<_i7.NavigatorState>? navigatorKey,
    required this.authGuard,
  }) : super(navigatorKey);

  final _i8.AuthGuard authGuard;

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    SignInRoute.name: (routeData) {
      final args = routeData.argsAs<SignInRouteArgs>();
      return _i6.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i1.SignInPage(
          key: args.key,
          onResult: args.onResult,
        ),
      );
    },
    NavigationBar.name: (routeData) {
      return _i6.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i2.NavigationBar(),
      );
    },
    RoomListRoute.name: (routeData) {
      return _i6.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i3.RoomListPage(),
      );
    },
    RoomJoinListRoute.name: (routeData) {
      return _i6.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i4.RoomJoinListPage(),
      );
    },
    MessageRoomListRoute.name: (routeData) {
      return _i6.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i5.MessageRoomListPage(),
      );
    },
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(
          SignInRoute.name,
          path: '/sign_in',
        ),
        _i6.RouteConfig(
          NavigationBar.name,
          path: '/',
          guards: [authGuard],
          children: [
            _i6.RouteConfig(
              RoomListRoute.name,
              path: 'rooms_search',
              parent: NavigationBar.name,
            ),
            _i6.RouteConfig(
              RoomJoinListRoute.name,
              path: 'rooms',
              parent: NavigationBar.name,
            ),
            _i6.RouteConfig(
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
class SignInRoute extends _i6.PageRouteInfo<SignInRouteArgs> {
  SignInRoute({
    _i7.Key? key,
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

  final _i7.Key? key;

  final dynamic Function(bool) onResult;

  @override
  String toString() {
    return 'SignInRouteArgs{key: $key, onResult: $onResult}';
  }
}

/// generated route for
/// [_i2.NavigationBar]
class NavigationBar extends _i6.PageRouteInfo<void> {
  const NavigationBar({List<_i6.PageRouteInfo>? children})
      : super(
          NavigationBar.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'NavigationBar';
}

/// generated route for
/// [_i3.RoomListPage]
class RoomListRoute extends _i6.PageRouteInfo<void> {
  const RoomListRoute()
      : super(
          RoomListRoute.name,
          path: 'rooms_search',
        );

  static const String name = 'RoomListRoute';
}

/// generated route for
/// [_i4.RoomJoinListPage]
class RoomJoinListRoute extends _i6.PageRouteInfo<void> {
  const RoomJoinListRoute()
      : super(
          RoomJoinListRoute.name,
          path: 'rooms',
        );

  static const String name = 'RoomJoinListRoute';
}

/// generated route for
/// [_i5.MessageRoomListPage]
class MessageRoomListRoute extends _i6.PageRouteInfo<void> {
  const MessageRoomListRoute()
      : super(
          MessageRoomListRoute.name,
          path: 'message_rooms',
        );

  static const String name = 'MessageRoomListRoute';
}
