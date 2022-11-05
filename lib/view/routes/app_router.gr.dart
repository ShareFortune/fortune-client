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
import 'package:fortune_client/view/widgets/navigation_bar.dart' as _i2;
import 'package:fortune_client/view/pages/auth/sign_in/sign_in_page.dart'
    as _i1;
import 'package:fortune_client/view/pages/messages/message_room_list/containers/page.dart'
    as _i5;
import 'package:fortune_client/view/pages/rooms/participating/containers/page.dart'
    as _i4;
import 'package:fortune_client/view/pages/rooms/room_list/room_list_page.dart'
    as _i3;
import 'package:fortune_client/view/routes/route_guard.dart' as _i8;

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
    FortuneBottomNavigationBar.name: (routeData) {
      return _i6.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i2.FortuneBottomNavigationBar(),
      );
    },
    RoomListRoute.name: (routeData) {
      return _i6.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i3.RoomListPage(),
      );
    },
    ParticipatingRoomListRoute.name: (routeData) {
      return _i6.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i4.ParticipatingRoomListPage(),
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
          FortuneBottomNavigationBar.name,
          path: '/',
          guards: [authGuard],
          children: [
            _i6.RouteConfig(
              RoomListRoute.name,
              path: 'rooms',
              parent: FortuneBottomNavigationBar.name,
            ),
            _i6.RouteConfig(
              ParticipatingRoomListRoute.name,
              path: 'rooms',
              parent: FortuneBottomNavigationBar.name,
            ),
            _i6.RouteConfig(
              MessageRoomListRoute.name,
              path: 'message_rooms',
              parent: FortuneBottomNavigationBar.name,
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
/// [_i2.FortuneBottomNavigationBar]
class FortuneBottomNavigationBar extends _i6.PageRouteInfo<void> {
  const FortuneBottomNavigationBar({List<_i6.PageRouteInfo>? children})
      : super(
          FortuneBottomNavigationBar.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'FortuneBottomNavigationBar';
}

/// generated route for
/// [_i3.RoomListPage]
class RoomListRoute extends _i6.PageRouteInfo<void> {
  const RoomListRoute()
      : super(
          RoomListRoute.name,
          path: 'rooms',
        );

  static const String name = 'RoomListRoute';
}

/// generated route for
/// [_i4.ParticipatingRoomListPage]
class ParticipatingRoomListRoute extends _i6.PageRouteInfo<void> {
  const ParticipatingRoomListRoute()
      : super(
          ParticipatingRoomListRoute.name,
          path: 'rooms',
        );

  static const String name = 'ParticipatingRoomListRoute';
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
