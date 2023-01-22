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
import 'package:auto_route/auto_route.dart' as _i22;
import 'package:auto_route/empty_router_widgets.dart' as _i2;
import 'package:flutter/material.dart' as _i23;
import 'package:fortune_client/view/pages/account/my_page/my_page.dart' as _i9;
import 'package:fortune_client/view/pages/auth/login/login_page.dart' as _i4;
import 'package:fortune_client/view/pages/common/bottom_navigation_bar/bottom_navigation_bar.dart'
    as _i1;
import 'package:fortune_client/view/pages/common/entry_page/entry_address/entry_address_page.dart'
    as _i8;
import 'package:fortune_client/view/pages/common/entry_page/entry_description/entry_description_page.dart'
    as _i12;
import 'package:fortune_client/view/pages/debug/debug_page.dart' as _i5;
import 'package:fortune_client/view/pages/message/message_room/message_room_page.dart'
    as _i3;
import 'package:fortune_client/view/pages/message/message_room_list/message_room_list_page.dart'
    as _i17;
import 'package:fortune_client/view/pages/profile/create/entry_basic_profile/basic_profile_entry_page.dart'
    as _i18;
import 'package:fortune_client/view/pages/profile/create/entry_detailed_profile/detailed_profile_entry_page.dart'
    as _i19;
import 'package:fortune_client/view/pages/profile/create/entry_profile_icon_image/profile_icon_image_entry_page.dart'
    as _i20;
import 'package:fortune_client/view/pages/profile/create/entry_profile_sub_image/entry_profile_sub_image_page.dart'
    as _i21;
import 'package:fortune_client/view/pages/profile/profile/profile_page.dart'
    as _i6;
import 'package:fortune_client/view/pages/request/request_confirmation/request_confirmation_page.dart'
    as _i16;
import 'package:fortune_client/view/pages/rooms/create/room_creation_page.dart'
    as _i7;
import 'package:fortune_client/view/pages/rooms/participating/participating_room_list_page.dart'
    as _i15;
import 'package:fortune_client/view/pages/rooms/room_detail/room_detail_page.dart'
    as _i14;
import 'package:fortune_client/view/pages/rooms/room_list/room_list_page.dart'
    as _i13;
import 'package:fortune_client/view/pages/settings/settings_page.dart' as _i10;
import 'package:fortune_client/view/pages/tags/select/tags_selection_page.dart'
    as _i11;
import 'package:fortune_client/view/routes/route_guard.dart' as _i24;

class AppRouter extends _i22.RootStackRouter {
  AppRouter({
    _i23.GlobalKey<_i23.NavigatorState>? navigatorKey,
    required this.authGuard,
    required this.checkIfMyProfileExists,
  }) : super(navigatorKey);

  final _i24.AuthGuard authGuard;

  final _i24.CheckIfMyProfileExists checkIfMyProfileExists;

  @override
  final Map<String, _i22.PageFactory> pagesMap = {
    HomeRouter.name: (routeData) {
      return _i22.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i1.MyBottomNavigationBar(),
      );
    },
    CreateProfileRoute.name: (routeData) {
      return _i22.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i2.EmptyRouterPage(),
      );
    },
    MessageRoomRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<MessageRoomRouteArgs>(
          orElse: () => MessageRoomRouteArgs(id: pathParams.getString('id')));
      return _i22.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i3.MessageRoomPage(
          key: args.key,
          id: args.id,
        ),
      );
    },
    LoginRoute.name: (routeData) {
      return _i22.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i4.LoginPage(),
      );
    },
    DebugRoute.name: (routeData) {
      return _i22.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i5.DebugPage(),
      );
    },
    ProfileRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<ProfileRouteArgs>(
          orElse: () => ProfileRouteArgs(id: pathParams.getString('id')));
      return _i22.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i6.ProfilePage(
          key: args.key,
          id: args.id,
        ),
      );
    },
    RoomCreationRoute.name: (routeData) {
      final args = routeData.argsAs<RoomCreationRouteArgs>(
          orElse: () => const RoomCreationRouteArgs());
      return _i22.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i7.RoomCreationPage(key: args.key),
      );
    },
    EntryAddressRoute.name: (routeData) {
      final args = routeData.argsAs<EntryAddressRouteArgs>(
          orElse: () => const EntryAddressRouteArgs());
      return _i22.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i8.EntryAddressPage(key: args.key),
      );
    },
    MyRoute.name: (routeData) {
      return _i22.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i9.MyPage(),
      );
    },
    SettingsRoute.name: (routeData) {
      return _i22.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i10.SettingsPage(),
      );
    },
    TagsSelectionRoute.name: (routeData) {
      final args = routeData.argsAs<TagsSelectionRouteArgs>(
          orElse: () => const TagsSelectionRouteArgs());
      return _i22.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i11.TagsSelectionPage(key: args.key),
      );
    },
    EntryDescriptionRoute.name: (routeData) {
      return _i22.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i12.EntryDescriptionPage(),
      );
    },
    RoomsTab.name: (routeData) {
      return _i22.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i2.EmptyRouterPage(),
      );
    },
    ParticipatingTab.name: (routeData) {
      return _i22.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i2.EmptyRouterPage(),
      );
    },
    MessagesTab.name: (routeData) {
      return _i22.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i2.EmptyRouterPage(),
      );
    },
    RoomListRoute.name: (routeData) {
      return _i22.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i13.RoomListPage(),
      );
    },
    RoomDetailRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<RoomDetailRouteArgs>(
          orElse: () =>
              RoomDetailRouteArgs(roomId: pathParams.getString('roomId')));
      return _i22.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i14.RoomDetailPage(
          args.roomId,
          key: args.key,
        ),
      );
    },
    ParticipatingRoomListRoute.name: (routeData) {
      return _i22.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i15.ParticipatingRoomListPage(),
      );
    },
    RequestConfirmationRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<RequestConfirmationRouteArgs>(
          orElse: () =>
              RequestConfirmationRouteArgs(id: pathParams.getInt('id')));
      return _i22.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i16.RequestConfirmationPage(
          key: args.key,
          id: args.id,
        ),
      );
    },
    MessageRoomListRoute.name: (routeData) {
      return _i22.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i17.MessageRoomListPage(),
      );
    },
    BasicProfileEntryRoute.name: (routeData) {
      return _i22.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i18.BasicProfileEntryPage(),
      );
    },
    DetailedProfileEntryRoute.name: (routeData) {
      return _i22.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i19.DetailedProfileEntryPage(),
      );
    },
    ProfileIconImageEntryRoute.name: (routeData) {
      return _i22.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i20.ProfileIconImageEntryPage(),
      );
    },
    EntryProfileSubImageRoute.name: (routeData) {
      return _i22.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i21.EntryProfileSubImagePage(),
      );
    },
  };

  @override
  List<_i22.RouteConfig> get routes => [
        _i22.RouteConfig(
          HomeRouter.name,
          path: '/',
          guards: [
            authGuard,
            checkIfMyProfileExists,
          ],
          children: [
            _i22.RouteConfig(
              RoomsTab.name,
              path: 'rooms',
              parent: HomeRouter.name,
              children: [
                _i22.RouteConfig(
                  RoomListRoute.name,
                  path: '',
                  parent: RoomsTab.name,
                ),
                _i22.RouteConfig(
                  RoomDetailRoute.name,
                  path: 'room/:roomId',
                  parent: RoomsTab.name,
                ),
              ],
            ),
            _i22.RouteConfig(
              ParticipatingTab.name,
              path: 'participating-rooms',
              parent: HomeRouter.name,
              children: [
                _i22.RouteConfig(
                  ParticipatingRoomListRoute.name,
                  path: '',
                  parent: ParticipatingTab.name,
                ),
                _i22.RouteConfig(
                  RoomDetailRoute.name,
                  path: 'room/:roomId',
                  parent: ParticipatingTab.name,
                ),
                _i22.RouteConfig(
                  RequestConfirmationRoute.name,
                  path: 'request-confirmation/:id',
                  parent: ParticipatingTab.name,
                ),
              ],
            ),
            _i22.RouteConfig(
              MessagesTab.name,
              path: 'rooms',
              parent: HomeRouter.name,
              children: [
                _i22.RouteConfig(
                  MessageRoomListRoute.name,
                  path: '',
                  parent: MessagesTab.name,
                ),
                _i22.RouteConfig(
                  RoomDetailRoute.name,
                  path: 'room/:roomId',
                  parent: MessagesTab.name,
                ),
              ],
            ),
          ],
        ),
        _i22.RouteConfig(
          CreateProfileRoute.name,
          path: '/empty-router-page',
          guards: [authGuard],
          children: [
            _i22.RouteConfig(
              '#redirect',
              path: '',
              parent: CreateProfileRoute.name,
              redirectTo: 'create-profile-basic',
              fullMatch: true,
            ),
            _i22.RouteConfig(
              BasicProfileEntryRoute.name,
              path: 'create-profile-basic',
              parent: CreateProfileRoute.name,
            ),
            _i22.RouteConfig(
              DetailedProfileEntryRoute.name,
              path: 'create-profile-detail',
              parent: CreateProfileRoute.name,
            ),
            _i22.RouteConfig(
              ProfileIconImageEntryRoute.name,
              path: 'create-profile-icon-image',
              parent: CreateProfileRoute.name,
            ),
            _i22.RouteConfig(
              EntryProfileSubImageRoute.name,
              path: 'create-profile-sub-image',
              parent: CreateProfileRoute.name,
            ),
          ],
        ),
        _i22.RouteConfig(
          MessageRoomRoute.name,
          path: 'message-room/:id',
        ),
        _i22.RouteConfig(
          LoginRoute.name,
          path: 'login',
        ),
        _i22.RouteConfig(
          DebugRoute.name,
          path: 'debug',
        ),
        _i22.RouteConfig(
          ProfileRoute.name,
          path: 'profile/:id',
        ),
        _i22.RouteConfig(
          RoomCreationRoute.name,
          path: 'create-room',
        ),
        _i22.RouteConfig(
          EntryAddressRoute.name,
          path: 'enter-address',
        ),
        _i22.RouteConfig(
          MyRoute.name,
          path: 'account',
        ),
        _i22.RouteConfig(
          SettingsRoute.name,
          path: 'setting',
        ),
        _i22.RouteConfig(
          TagsSelectionRoute.name,
          path: 'tags',
        ),
        _i22.RouteConfig(
          EntryDescriptionRoute.name,
          path: 'entry-description',
        ),
      ];
}

/// generated route for
/// [_i1.MyBottomNavigationBar]
class HomeRouter extends _i22.PageRouteInfo<void> {
  const HomeRouter({List<_i22.PageRouteInfo>? children})
      : super(
          HomeRouter.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'HomeRouter';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class CreateProfileRoute extends _i22.PageRouteInfo<void> {
  const CreateProfileRoute({List<_i22.PageRouteInfo>? children})
      : super(
          CreateProfileRoute.name,
          path: '/empty-router-page',
          initialChildren: children,
        );

  static const String name = 'CreateProfileRoute';
}

/// generated route for
/// [_i3.MessageRoomPage]
class MessageRoomRoute extends _i22.PageRouteInfo<MessageRoomRouteArgs> {
  MessageRoomRoute({
    _i23.Key? key,
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

  final _i23.Key? key;

  final String id;

  @override
  String toString() {
    return 'MessageRoomRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i4.LoginPage]
class LoginRoute extends _i22.PageRouteInfo<void> {
  const LoginRoute()
      : super(
          LoginRoute.name,
          path: 'login',
        );

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i5.DebugPage]
class DebugRoute extends _i22.PageRouteInfo<void> {
  const DebugRoute()
      : super(
          DebugRoute.name,
          path: 'debug',
        );

  static const String name = 'DebugRoute';
}

/// generated route for
/// [_i6.ProfilePage]
class ProfileRoute extends _i22.PageRouteInfo<ProfileRouteArgs> {
  ProfileRoute({
    _i23.Key? key,
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

  final _i23.Key? key;

  final String id;

  @override
  String toString() {
    return 'ProfileRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i7.RoomCreationPage]
class RoomCreationRoute extends _i22.PageRouteInfo<RoomCreationRouteArgs> {
  RoomCreationRoute({_i23.Key? key})
      : super(
          RoomCreationRoute.name,
          path: 'create-room',
          args: RoomCreationRouteArgs(key: key),
        );

  static const String name = 'RoomCreationRoute';
}

class RoomCreationRouteArgs {
  const RoomCreationRouteArgs({this.key});

  final _i23.Key? key;

  @override
  String toString() {
    return 'RoomCreationRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i8.EntryAddressPage]
class EntryAddressRoute extends _i22.PageRouteInfo<EntryAddressRouteArgs> {
  EntryAddressRoute({_i23.Key? key})
      : super(
          EntryAddressRoute.name,
          path: 'enter-address',
          args: EntryAddressRouteArgs(key: key),
        );

  static const String name = 'EntryAddressRoute';
}

class EntryAddressRouteArgs {
  const EntryAddressRouteArgs({this.key});

  final _i23.Key? key;

  @override
  String toString() {
    return 'EntryAddressRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i9.MyPage]
class MyRoute extends _i22.PageRouteInfo<void> {
  const MyRoute()
      : super(
          MyRoute.name,
          path: 'account',
        );

  static const String name = 'MyRoute';
}

/// generated route for
/// [_i10.SettingsPage]
class SettingsRoute extends _i22.PageRouteInfo<void> {
  const SettingsRoute()
      : super(
          SettingsRoute.name,
          path: 'setting',
        );

  static const String name = 'SettingsRoute';
}

/// generated route for
/// [_i11.TagsSelectionPage]
class TagsSelectionRoute extends _i22.PageRouteInfo<TagsSelectionRouteArgs> {
  TagsSelectionRoute({_i23.Key? key})
      : super(
          TagsSelectionRoute.name,
          path: 'tags',
          args: TagsSelectionRouteArgs(key: key),
        );

  static const String name = 'TagsSelectionRoute';
}

class TagsSelectionRouteArgs {
  const TagsSelectionRouteArgs({this.key});

  final _i23.Key? key;

  @override
  String toString() {
    return 'TagsSelectionRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i12.EntryDescriptionPage]
class EntryDescriptionRoute extends _i22.PageRouteInfo<void> {
  const EntryDescriptionRoute()
      : super(
          EntryDescriptionRoute.name,
          path: 'entry-description',
        );

  static const String name = 'EntryDescriptionRoute';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class RoomsTab extends _i22.PageRouteInfo<void> {
  const RoomsTab({List<_i22.PageRouteInfo>? children})
      : super(
          RoomsTab.name,
          path: 'rooms',
          initialChildren: children,
        );

  static const String name = 'RoomsTab';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class ParticipatingTab extends _i22.PageRouteInfo<void> {
  const ParticipatingTab({List<_i22.PageRouteInfo>? children})
      : super(
          ParticipatingTab.name,
          path: 'participating-rooms',
          initialChildren: children,
        );

  static const String name = 'ParticipatingTab';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class MessagesTab extends _i22.PageRouteInfo<void> {
  const MessagesTab({List<_i22.PageRouteInfo>? children})
      : super(
          MessagesTab.name,
          path: 'rooms',
          initialChildren: children,
        );

  static const String name = 'MessagesTab';
}

/// generated route for
/// [_i13.RoomListPage]
class RoomListRoute extends _i22.PageRouteInfo<void> {
  const RoomListRoute()
      : super(
          RoomListRoute.name,
          path: '',
        );

  static const String name = 'RoomListRoute';
}

/// generated route for
/// [_i14.RoomDetailPage]
class RoomDetailRoute extends _i22.PageRouteInfo<RoomDetailRouteArgs> {
  RoomDetailRoute({
    required String roomId,
    _i23.Key? key,
  }) : super(
          RoomDetailRoute.name,
          path: 'room/:roomId',
          args: RoomDetailRouteArgs(
            roomId: roomId,
            key: key,
          ),
          rawPathParams: {'roomId': roomId},
        );

  static const String name = 'RoomDetailRoute';
}

class RoomDetailRouteArgs {
  const RoomDetailRouteArgs({
    required this.roomId,
    this.key,
  });

  final String roomId;

  final _i23.Key? key;

  @override
  String toString() {
    return 'RoomDetailRouteArgs{roomId: $roomId, key: $key}';
  }
}

/// generated route for
/// [_i15.ParticipatingRoomListPage]
class ParticipatingRoomListRoute extends _i22.PageRouteInfo<void> {
  const ParticipatingRoomListRoute()
      : super(
          ParticipatingRoomListRoute.name,
          path: '',
        );

  static const String name = 'ParticipatingRoomListRoute';
}

/// generated route for
/// [_i16.RequestConfirmationPage]
class RequestConfirmationRoute
    extends _i22.PageRouteInfo<RequestConfirmationRouteArgs> {
  RequestConfirmationRoute({
    _i23.Key? key,
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

  final _i23.Key? key;

  final int id;

  @override
  String toString() {
    return 'RequestConfirmationRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i17.MessageRoomListPage]
class MessageRoomListRoute extends _i22.PageRouteInfo<void> {
  const MessageRoomListRoute()
      : super(
          MessageRoomListRoute.name,
          path: '',
        );

  static const String name = 'MessageRoomListRoute';
}

/// generated route for
/// [_i18.BasicProfileEntryPage]
class BasicProfileEntryRoute extends _i22.PageRouteInfo<void> {
  const BasicProfileEntryRoute()
      : super(
          BasicProfileEntryRoute.name,
          path: 'create-profile-basic',
        );

  static const String name = 'BasicProfileEntryRoute';
}

/// generated route for
/// [_i19.DetailedProfileEntryPage]
class DetailedProfileEntryRoute extends _i22.PageRouteInfo<void> {
  const DetailedProfileEntryRoute()
      : super(
          DetailedProfileEntryRoute.name,
          path: 'create-profile-detail',
        );

  static const String name = 'DetailedProfileEntryRoute';
}

/// generated route for
/// [_i20.ProfileIconImageEntryPage]
class ProfileIconImageEntryRoute extends _i22.PageRouteInfo<void> {
  const ProfileIconImageEntryRoute()
      : super(
          ProfileIconImageEntryRoute.name,
          path: 'create-profile-icon-image',
        );

  static const String name = 'ProfileIconImageEntryRoute';
}

/// generated route for
/// [_i21.EntryProfileSubImagePage]
class EntryProfileSubImageRoute extends _i22.PageRouteInfo<void> {
  const EntryProfileSubImageRoute()
      : super(
          EntryProfileSubImageRoute.name,
          path: 'create-profile-sub-image',
        );

  static const String name = 'EntryProfileSubImageRoute';
}
