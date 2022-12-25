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
import 'package:auto_route/auto_route.dart' as _i18;
import 'package:auto_route/empty_router_widgets.dart' as _i3;
import 'package:flutter/material.dart' as _i19;
import 'package:fortune_client/view/pages/account/account/account_page.dart'
    as _i5;
import 'package:fortune_client/view/pages/auth/login/login_page.dart' as _i1;
import 'package:fortune_client/view/pages/common/bottom_navigation_bar/bottom_navigation_bar.dart'
    as _i6;
import 'package:fortune_client/view/pages/debug/debug_page.dart' as _i2;
import 'package:fortune_client/view/pages/message/message_room/message_room_page.dart'
    as _i17;
import 'package:fortune_client/view/pages/message/message_room_list/message_room_list_page.dart'
    as _i16;
import 'package:fortune_client/view/pages/profile/create/entry_basic_profile/basic_profile_entry_page.dart'
    as _i7;
import 'package:fortune_client/view/pages/profile/create/entry_detailed_profile/detailed_profile_entry_page.dart'
    as _i8;
import 'package:fortune_client/view/pages/profile/create/entry_profile_icon_image/profile_icon_image_entry_page.dart'
    as _i9;
import 'package:fortune_client/view/pages/profile/create/entry_profile_sub_image/entry_profile_sub_image_page.dart'
    as _i10;
import 'package:fortune_client/view/pages/profile/profile/profile_page.dart'
    as _i4;
import 'package:fortune_client/view/pages/request/request_confirmation/request_confirmation_page.dart'
    as _i15;
import 'package:fortune_client/view/pages/rooms/create/room_create_page.dart'
    as _i11;
import 'package:fortune_client/view/pages/rooms/participating_room_list/participating_room_list_page.dart'
    as _i14;
import 'package:fortune_client/view/pages/rooms/room_detail/room_detail_page.dart'
    as _i13;
import 'package:fortune_client/view/pages/rooms/room_list/room_list_page.dart'
    as _i12;
import 'package:fortune_client/view/routes/route_guard.dart' as _i20;

class AppRouter extends _i18.RootStackRouter {
  AppRouter({
    _i19.GlobalKey<_i19.NavigatorState>? navigatorKey,
    required this.authGuard,
    required this.checkIfMyProfileExists,
  }) : super(navigatorKey);

  final _i20.AuthGuard authGuard;

  final _i20.CheckIfMyProfileExists checkIfMyProfileExists;

  @override
  final Map<String, _i18.PageFactory> pagesMap = {
    LoginRoute.name: (routeData) {
      return _i18.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i1.LoginPage(),
      );
    },
    DebugRoute.name: (routeData) {
      return _i18.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i2.DebugPage(),
      );
    },
    ProfileCreateRoute.name: (routeData) {
      return _i18.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i3.EmptyRouterPage(),
      );
    },
    ProfileRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<ProfileRouteArgs>(
          orElse: () => ProfileRouteArgs(id: pathParams.getString('id')));
      return _i18.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i4.ProfilePage(
          key: args.key,
          id: args.id,
        ),
      );
    },
    AccountRoute.name: (routeData) {
      return _i18.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i5.AccountPage(),
      );
    },
    CreateRoomRoute.name: (routeData) {
      return _i18.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i3.EmptyRouterPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i18.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i6.MyBottomNavigationBar(),
      );
    },
    BasicProfileEntryRoute.name: (routeData) {
      return _i18.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i7.BasicProfileEntryPage(),
      );
    },
    DetailedProfileEntryRoute.name: (routeData) {
      return _i18.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i8.DetailedProfileEntryPage(),
      );
    },
    ProfileIconImageEntryRoute.name: (routeData) {
      return _i18.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i9.ProfileIconImageEntryPage(),
      );
    },
    EntryProfileSubImageRoute.name: (routeData) {
      return _i18.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i10.EntryProfileSubImagePage(),
      );
    },
    RoomCreateRoute.name: (routeData) {
      return _i18.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i11.RoomCreatePage(),
      );
    },
    RoomsRoute.name: (routeData) {
      return _i18.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i3.EmptyRouterPage(),
      );
    },
    ParticipatingRoomsRoute.name: (routeData) {
      return _i18.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i3.EmptyRouterPage(),
      );
    },
    MessageRoomsRoute.name: (routeData) {
      return _i18.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i3.EmptyRouterPage(),
      );
    },
    RoomListRoute.name: (routeData) {
      return _i18.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i12.RoomListPage(),
      );
    },
    RoomDetailRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<RoomDetailRouteArgs>(
          orElse: () => RoomDetailRouteArgs(id: pathParams.getString('id')));
      return _i18.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i13.RoomDetailPage(
          key: args.key,
          id: args.id,
        ),
      );
    },
    ParticipatingRoomListRoute.name: (routeData) {
      return _i18.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i14.ParticipatingRoomListPage(),
      );
    },
    RequestConfirmationRoute.name: (routeData) {
      return _i18.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i15.RequestConfirmationPage(),
      );
    },
    MessageRoomListRoute.name: (routeData) {
      return _i18.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i16.MessageRoomListPage(),
      );
    },
    MessageRoomRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<MessageRoomRouteArgs>(
          orElse: () => MessageRoomRouteArgs(id: pathParams.getString('id')));
      return _i18.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i17.MessageRoomPage(
          key: args.key,
          id: args.id,
        ),
      );
    },
  };

  @override
  List<_i18.RouteConfig> get routes => [
        _i18.RouteConfig(
          LoginRoute.name,
          path: '/login',
        ),
        _i18.RouteConfig(
          DebugRoute.name,
          path: '/debug',
        ),
        _i18.RouteConfig(
          ProfileCreateRoute.name,
          path: '/create-profile',
          guards: [authGuard],
          children: [
            _i18.RouteConfig(
              BasicProfileEntryRoute.name,
              path: '',
              parent: ProfileCreateRoute.name,
            ),
            _i18.RouteConfig(
              DetailedProfileEntryRoute.name,
              path: 'detail',
              parent: ProfileCreateRoute.name,
            ),
            _i18.RouteConfig(
              ProfileIconImageEntryRoute.name,
              path: 'icon-image',
              parent: ProfileCreateRoute.name,
            ),
            _i18.RouteConfig(
              EntryProfileSubImageRoute.name,
              path: 'sub-image',
              parent: ProfileCreateRoute.name,
            ),
          ],
        ),
        _i18.RouteConfig(
          ProfileRoute.name,
          path: '/profile/:id',
          guards: [
            authGuard,
            checkIfMyProfileExists,
          ],
        ),
        _i18.RouteConfig(
          AccountRoute.name,
          path: 'account',
        ),
        _i18.RouteConfig(
          CreateRoomRoute.name,
          path: 'create-room',
          children: [
            _i18.RouteConfig(
              RoomCreateRoute.name,
              path: '',
              parent: CreateRoomRoute.name,
            )
          ],
        ),
        _i18.RouteConfig(
          HomeRoute.name,
          path: '/',
          guards: [
            authGuard,
            checkIfMyProfileExists,
          ],
          children: [
            _i18.RouteConfig(
              RoomsRoute.name,
              path: 'rooms',
              parent: HomeRoute.name,
              children: [
                _i18.RouteConfig(
                  RoomListRoute.name,
                  path: '',
                  parent: RoomsRoute.name,
                ),
                _i18.RouteConfig(
                  RoomDetailRoute.name,
                  path: ':id',
                  parent: RoomsRoute.name,
                ),
              ],
            ),
            _i18.RouteConfig(
              ParticipatingRoomsRoute.name,
              path: 'participating-rooms',
              parent: HomeRoute.name,
              children: [
                _i18.RouteConfig(
                  ParticipatingRoomListRoute.name,
                  path: '',
                  parent: ParticipatingRoomsRoute.name,
                ),
                _i18.RouteConfig(
                  RequestConfirmationRoute.name,
                  path: 'request-confirmation:id',
                  parent: ParticipatingRoomsRoute.name,
                  guards: [authGuard],
                ),
              ],
            ),
            _i18.RouteConfig(
              MessageRoomsRoute.name,
              path: 'message-rooms',
              parent: HomeRoute.name,
              children: [
                _i18.RouteConfig(
                  MessageRoomListRoute.name,
                  path: '',
                  parent: MessageRoomsRoute.name,
                ),
                _i18.RouteConfig(
                  MessageRoomRoute.name,
                  path: ':id',
                  parent: MessageRoomsRoute.name,
                ),
              ],
            ),
          ],
        ),
      ];
}

/// generated route for
/// [_i1.LoginPage]
class LoginRoute extends _i18.PageRouteInfo<void> {
  const LoginRoute()
      : super(
          LoginRoute.name,
          path: '/login',
        );

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i2.DebugPage]
class DebugRoute extends _i18.PageRouteInfo<void> {
  const DebugRoute()
      : super(
          DebugRoute.name,
          path: '/debug',
        );

  static const String name = 'DebugRoute';
}

/// generated route for
/// [_i3.EmptyRouterPage]
class ProfileCreateRoute extends _i18.PageRouteInfo<void> {
  const ProfileCreateRoute({List<_i18.PageRouteInfo>? children})
      : super(
          ProfileCreateRoute.name,
          path: '/create-profile',
          initialChildren: children,
        );

  static const String name = 'ProfileCreateRoute';
}

/// generated route for
/// [_i4.ProfilePage]
class ProfileRoute extends _i18.PageRouteInfo<ProfileRouteArgs> {
  ProfileRoute({
    _i19.Key? key,
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

  final _i19.Key? key;

  final String id;

  @override
  String toString() {
    return 'ProfileRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i5.AccountPage]
class AccountRoute extends _i18.PageRouteInfo<void> {
  const AccountRoute()
      : super(
          AccountRoute.name,
          path: 'account',
        );

  static const String name = 'AccountRoute';
}

/// generated route for
/// [_i3.EmptyRouterPage]
class CreateRoomRoute extends _i18.PageRouteInfo<void> {
  const CreateRoomRoute({List<_i18.PageRouteInfo>? children})
      : super(
          CreateRoomRoute.name,
          path: 'create-room',
          initialChildren: children,
        );

  static const String name = 'CreateRoomRoute';
}

/// generated route for
/// [_i6.MyBottomNavigationBar]
class HomeRoute extends _i18.PageRouteInfo<void> {
  const HomeRoute({List<_i18.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i7.BasicProfileEntryPage]
class BasicProfileEntryRoute extends _i18.PageRouteInfo<void> {
  const BasicProfileEntryRoute()
      : super(
          BasicProfileEntryRoute.name,
          path: '',
        );

  static const String name = 'BasicProfileEntryRoute';
}

/// generated route for
/// [_i8.DetailedProfileEntryPage]
class DetailedProfileEntryRoute extends _i18.PageRouteInfo<void> {
  const DetailedProfileEntryRoute()
      : super(
          DetailedProfileEntryRoute.name,
          path: 'detail',
        );

  static const String name = 'DetailedProfileEntryRoute';
}

/// generated route for
/// [_i9.ProfileIconImageEntryPage]
class ProfileIconImageEntryRoute extends _i18.PageRouteInfo<void> {
  const ProfileIconImageEntryRoute()
      : super(
          ProfileIconImageEntryRoute.name,
          path: 'icon-image',
        );

  static const String name = 'ProfileIconImageEntryRoute';
}

/// generated route for
/// [_i10.EntryProfileSubImagePage]
class EntryProfileSubImageRoute extends _i18.PageRouteInfo<void> {
  const EntryProfileSubImageRoute()
      : super(
          EntryProfileSubImageRoute.name,
          path: 'sub-image',
        );

  static const String name = 'EntryProfileSubImageRoute';
}

/// generated route for
/// [_i11.RoomCreatePage]
class RoomCreateRoute extends _i18.PageRouteInfo<void> {
  const RoomCreateRoute()
      : super(
          RoomCreateRoute.name,
          path: '',
        );

  static const String name = 'RoomCreateRoute';
}

/// generated route for
/// [_i3.EmptyRouterPage]
class RoomsRoute extends _i18.PageRouteInfo<void> {
  const RoomsRoute({List<_i18.PageRouteInfo>? children})
      : super(
          RoomsRoute.name,
          path: 'rooms',
          initialChildren: children,
        );

  static const String name = 'RoomsRoute';
}

/// generated route for
/// [_i3.EmptyRouterPage]
class ParticipatingRoomsRoute extends _i18.PageRouteInfo<void> {
  const ParticipatingRoomsRoute({List<_i18.PageRouteInfo>? children})
      : super(
          ParticipatingRoomsRoute.name,
          path: 'participating-rooms',
          initialChildren: children,
        );

  static const String name = 'ParticipatingRoomsRoute';
}

/// generated route for
/// [_i3.EmptyRouterPage]
class MessageRoomsRoute extends _i18.PageRouteInfo<void> {
  const MessageRoomsRoute({List<_i18.PageRouteInfo>? children})
      : super(
          MessageRoomsRoute.name,
          path: 'message-rooms',
          initialChildren: children,
        );

  static const String name = 'MessageRoomsRoute';
}

/// generated route for
/// [_i12.RoomListPage]
class RoomListRoute extends _i18.PageRouteInfo<void> {
  const RoomListRoute()
      : super(
          RoomListRoute.name,
          path: '',
        );

  static const String name = 'RoomListRoute';
}

/// generated route for
/// [_i13.RoomDetailPage]
class RoomDetailRoute extends _i18.PageRouteInfo<RoomDetailRouteArgs> {
  RoomDetailRoute({
    _i19.Key? key,
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

  final _i19.Key? key;

  final String id;

  @override
  String toString() {
    return 'RoomDetailRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i14.ParticipatingRoomListPage]
class ParticipatingRoomListRoute extends _i18.PageRouteInfo<void> {
  const ParticipatingRoomListRoute()
      : super(
          ParticipatingRoomListRoute.name,
          path: '',
        );

  static const String name = 'ParticipatingRoomListRoute';
}

/// generated route for
/// [_i15.RequestConfirmationPage]
class RequestConfirmationRoute extends _i18.PageRouteInfo<void> {
  const RequestConfirmationRoute()
      : super(
          RequestConfirmationRoute.name,
          path: 'request-confirmation:id',
        );

  static const String name = 'RequestConfirmationRoute';
}

/// generated route for
/// [_i16.MessageRoomListPage]
class MessageRoomListRoute extends _i18.PageRouteInfo<void> {
  const MessageRoomListRoute()
      : super(
          MessageRoomListRoute.name,
          path: '',
        );

  static const String name = 'MessageRoomListRoute';
}

/// generated route for
/// [_i17.MessageRoomPage]
class MessageRoomRoute extends _i18.PageRouteInfo<MessageRoomRouteArgs> {
  MessageRoomRoute({
    _i19.Key? key,
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

  final _i19.Key? key;

  final String id;

  @override
  String toString() {
    return 'MessageRoomRouteArgs{key: $key, id: $id}';
  }
}
