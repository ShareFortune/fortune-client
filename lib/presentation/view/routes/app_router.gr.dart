// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$$AppRouter extends RootStackRouter {
  _$$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    FortuneBottomNavigationBarRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const FortuneBottomNavigationBar(),
      );
    },
    SignInPageRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const SignInPage(),
      );
    },
    RoomListPageRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const RoomListPage(),
      );
    },
    ParticipatingRoomListPageRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const ParticipatingRoomListPage(),
      );
    },
    MessageRoomListPageRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const MessageRoomListPage(),
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          FortuneBottomNavigationBarRoute.name,
          path: '/',
          children: [
            RouteConfig(
              '#redirect',
              path: '',
              parent: FortuneBottomNavigationBarRoute.name,
              redirectTo: 'rooms',
              fullMatch: true,
            ),
            RouteConfig(
              RoomListPageRoute.name,
              path: 'rooms',
              parent: FortuneBottomNavigationBarRoute.name,
            ),
            RouteConfig(
              ParticipatingRoomListPageRoute.name,
              path: 'posts',
              parent: FortuneBottomNavigationBarRoute.name,
            ),
            RouteConfig(
              MessageRoomListPageRoute.name,
              path: 'settings',
              parent: FortuneBottomNavigationBarRoute.name,
            ),
          ],
        ),
        RouteConfig(
          SignInPageRoute.name,
          path: '/login',
        ),
      ];
}

/// generated route for
/// [FortuneBottomNavigationBar]
class FortuneBottomNavigationBarRoute extends PageRouteInfo<void> {
  const FortuneBottomNavigationBarRoute({List<PageRouteInfo>? children})
      : super(
          FortuneBottomNavigationBarRoute.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'FortuneBottomNavigationBarRoute';
}

/// generated route for
/// [SignInPage]
class SignInPageRoute extends PageRouteInfo<void> {
  const SignInPageRoute()
      : super(
          SignInPageRoute.name,
          path: '/login',
        );

  static const String name = 'SignInPageRoute';
}

/// generated route for
/// [RoomListPage]
class RoomListPageRoute extends PageRouteInfo<void> {
  const RoomListPageRoute()
      : super(
          RoomListPageRoute.name,
          path: 'rooms',
        );

  static const String name = 'RoomListPageRoute';
}

/// generated route for
/// [ParticipatingRoomListPage]
class ParticipatingRoomListPageRoute extends PageRouteInfo<void> {
  const ParticipatingRoomListPageRoute()
      : super(
          ParticipatingRoomListPageRoute.name,
          path: 'posts',
        );

  static const String name = 'ParticipatingRoomListPageRoute';
}

/// generated route for
/// [MessageRoomListPage]
class MessageRoomListPageRoute extends PageRouteInfo<void> {
  const MessageRoomListPageRoute()
      : super(
          MessageRoomListPageRoute.name,
          path: 'settings',
        );

  static const String name = 'MessageRoomListPageRoute';
}
