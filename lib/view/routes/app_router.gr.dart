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
import 'package:auto_route/auto_route.dart' as _i24;
import 'package:auto_route/empty_router_widgets.dart' as _i3;
import 'package:flutter/material.dart' as _i25;
import 'package:fortune_client/data/model/tag/tag.dart' as _i27;
import 'package:fortune_client/view/pages/account/my_page/my_page.dart' as _i9;
import 'package:fortune_client/view/pages/auth/login/login_page.dart' as _i1;
import 'package:fortune_client/view/pages/common/bottom_navigation_bar/bottom_navigation_bar.dart'
    as _i2;
import 'package:fortune_client/view/pages/common/entry_page/entry_address/entry_address_page.dart'
    as _i8;
import 'package:fortune_client/view/pages/common/entry_page/entry_description/entry_description_page.dart'
    as _i14;
import 'package:fortune_client/view/pages/debug/debug_page.dart' as _i5;
import 'package:fortune_client/view/pages/message/message_room/message_room_page.dart'
    as _i4;
import 'package:fortune_client/view/pages/message/message_room_list/message_room_list_page.dart'
    as _i19;
import 'package:fortune_client/view/pages/profile/create/entry_basic_profile/basic_profile_entry_page.dart'
    as _i20;
import 'package:fortune_client/view/pages/profile/create/entry_detailed_profile/detailed_profile_entry_page.dart'
    as _i21;
import 'package:fortune_client/view/pages/profile/create/entry_profile_icon_image/profile_icon_image_entry_page.dart'
    as _i22;
import 'package:fortune_client/view/pages/profile/create/entry_profile_sub_image/entry_profile_sub_image_page.dart'
    as _i23;
import 'package:fortune_client/view/pages/profile/profile/profile_page.dart'
    as _i6;
import 'package:fortune_client/view/pages/profile/update/profile_update_page.dart'
    as _i10;
import 'package:fortune_client/view/pages/request/join_requests_confirmation/join_requests_confirmation_page.dart'
    as _i18;
import 'package:fortune_client/view/pages/rooms/create/room_creation_page.dart'
    as _i7;
import 'package:fortune_client/view/pages/rooms/participating/participating_room_list_page.dart'
    as _i17;
import 'package:fortune_client/view/pages/rooms/room_detail/room_detail_page.dart'
    as _i16;
import 'package:fortune_client/view/pages/rooms/room_list/room_list_page.dart'
    as _i15;
import 'package:fortune_client/view/pages/settings/settings_page.dart' as _i11;
import 'package:fortune_client/view/pages/tags/create/tag_creation_page.dart'
    as _i13;
import 'package:fortune_client/view/pages/tags/select/tags_selection_page.dart'
    as _i12;
import 'package:fortune_client/view/routes/route_guard.dart' as _i26;

class AppRouter extends _i24.RootStackRouter {
  AppRouter({
    _i25.GlobalKey<_i25.NavigatorState>? navigatorKey,
    required this.authGuard,
    required this.checkIfMyProfileExists,
  }) : super(navigatorKey);

  final _i26.AuthGuard authGuard;

  final _i26.CheckIfMyProfileExists checkIfMyProfileExists;

  @override
  final Map<String, _i24.PageFactory> pagesMap = {
    LoginRoute.name: (routeData) {
      return _i24.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i1.LoginPage(),
      );
    },
    HomeRouter.name: (routeData) {
      return _i24.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i2.MyBottomNavigationBar(),
      );
    },
    CreateProfileRoute.name: (routeData) {
      return _i24.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i3.EmptyRouterPage(),
      );
    },
    MessageRoomRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<MessageRoomRouteArgs>(
          orElse: () => MessageRoomRouteArgs(id: pathParams.getString('id')));
      return _i24.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i4.MessageRoomPage(
          key: args.key,
          id: args.id,
        ),
      );
    },
    DebugRoute.name: (routeData) {
      return _i24.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i5.DebugPage(),
      );
    },
    ProfileRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<ProfileRouteArgs>(
          orElse: () => ProfileRouteArgs(id: pathParams.getString('id')));
      return _i24.AdaptivePage<dynamic>(
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
      return _i24.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i7.RoomCreationPage(key: args.key),
      );
    },
    EntryAddressRoute.name: (routeData) {
      final args = routeData.argsAs<EntryAddressRouteArgs>(
          orElse: () => const EntryAddressRouteArgs());
      return _i24.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i8.EntryAddressPage(key: args.key),
      );
    },
    MyRoute.name: (routeData) {
      return _i24.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i9.MyPage(),
      );
    },
    ProfileUpdateRoute.name: (routeData) {
      return _i24.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i10.ProfileUpdatePage(),
      );
    },
    SettingsRoute.name: (routeData) {
      return _i24.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i11.SettingsPage(),
      );
    },
    TagsSelectionRoute.name: (routeData) {
      final args = routeData.argsAs<TagsSelectionRouteArgs>();
      return _i24.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i12.TagsSelectionPage(
          args.beingSet,
          key: args.key,
        ),
      );
    },
    TagCreationRoute.name: (routeData) {
      final args = routeData.argsAs<TagCreationRouteArgs>(
          orElse: () => const TagCreationRouteArgs());
      return _i24.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i13.TagCreationPage(key: args.key),
      );
    },
    EntryDescriptionRoute.name: (routeData) {
      final args = routeData.argsAs<EntryDescriptionRouteArgs>();
      return _i24.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i14.EntryDescriptionPage(
          title: args.title,
          value: args.value,
          key: args.key,
        ),
      );
    },
    RoomsTab.name: (routeData) {
      return _i24.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i3.EmptyRouterPage(),
      );
    },
    ParticipatingTab.name: (routeData) {
      return _i24.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i3.EmptyRouterPage(),
      );
    },
    MessagesTab.name: (routeData) {
      return _i24.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i3.EmptyRouterPage(),
      );
    },
    RoomListRoute.name: (routeData) {
      return _i24.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i15.RoomListPage(),
      );
    },
    RoomDetailRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<RoomDetailRouteArgs>(
          orElse: () =>
              RoomDetailRouteArgs(roomId: pathParams.getString('roomId')));
      return _i24.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i16.RoomDetailPage(
          args.roomId,
          key: args.key,
        ),
      );
    },
    ParticipatingRoomListRoute.name: (routeData) {
      return _i24.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i17.ParticipatingRoomListPage(),
      );
    },
    JoinRequestsConfirmationRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<JoinRequestsConfirmationRouteArgs>(
          orElse: () => JoinRequestsConfirmationRouteArgs(
              id: pathParams.getString('id')));
      return _i24.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i18.JoinRequestsConfirmationPage(
          key: args.key,
          id: args.id,
        ),
      );
    },
    MessageRoomListRoute.name: (routeData) {
      return _i24.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i19.MessageRoomListPage(),
      );
    },
    BasicProfileEntryRoute.name: (routeData) {
      return _i24.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i20.BasicProfileEntryPage(),
      );
    },
    DetailedProfileEntryRoute.name: (routeData) {
      return _i24.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i21.DetailedProfileEntryPage(),
      );
    },
    ProfileIconImageEntryRoute.name: (routeData) {
      return _i24.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i22.ProfileIconImageEntryPage(),
      );
    },
    EntryProfileSubImageRoute.name: (routeData) {
      return _i24.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i23.EntryProfileSubImagePage(),
      );
    },
  };

  @override
  List<_i24.RouteConfig> get routes => [
        _i24.RouteConfig(
          LoginRoute.name,
          path: 'login',
        ),
        _i24.RouteConfig(
          HomeRouter.name,
          path: '/',
          guards: [
            authGuard,
            checkIfMyProfileExists,
          ],
          children: [
            _i24.RouteConfig(
              RoomsTab.name,
              path: 'rooms',
              parent: HomeRouter.name,
              children: [
                _i24.RouteConfig(
                  RoomListRoute.name,
                  path: '',
                  parent: RoomsTab.name,
                ),
                _i24.RouteConfig(
                  RoomDetailRoute.name,
                  path: 'room/:roomId',
                  parent: RoomsTab.name,
                ),
              ],
            ),
            _i24.RouteConfig(
              ParticipatingTab.name,
              path: 'participating-rooms',
              parent: HomeRouter.name,
              children: [
                _i24.RouteConfig(
                  ParticipatingRoomListRoute.name,
                  path: '',
                  parent: ParticipatingTab.name,
                ),
                _i24.RouteConfig(
                  RoomDetailRoute.name,
                  path: 'room/:roomId',
                  parent: ParticipatingTab.name,
                ),
                _i24.RouteConfig(
                  JoinRequestsConfirmationRoute.name,
                  path: 'request-confirmation/:id',
                  parent: ParticipatingTab.name,
                ),
              ],
            ),
            _i24.RouteConfig(
              MessagesTab.name,
              path: 'rooms',
              parent: HomeRouter.name,
              children: [
                _i24.RouteConfig(
                  MessageRoomListRoute.name,
                  path: '',
                  parent: MessagesTab.name,
                ),
                _i24.RouteConfig(
                  RoomDetailRoute.name,
                  path: 'room/:roomId',
                  parent: MessagesTab.name,
                ),
              ],
            ),
          ],
        ),
        _i24.RouteConfig(
          CreateProfileRoute.name,
          path: '/empty-router-page',
          guards: [authGuard],
          children: [
            _i24.RouteConfig(
              '#redirect',
              path: '',
              parent: CreateProfileRoute.name,
              redirectTo: 'create-profile-basic',
              fullMatch: true,
            ),
            _i24.RouteConfig(
              BasicProfileEntryRoute.name,
              path: 'create-profile-basic',
              parent: CreateProfileRoute.name,
            ),
            _i24.RouteConfig(
              DetailedProfileEntryRoute.name,
              path: 'create-profile-detail',
              parent: CreateProfileRoute.name,
            ),
            _i24.RouteConfig(
              ProfileIconImageEntryRoute.name,
              path: 'create-profile-icon-image',
              parent: CreateProfileRoute.name,
            ),
            _i24.RouteConfig(
              EntryProfileSubImageRoute.name,
              path: 'create-profile-sub-image',
              parent: CreateProfileRoute.name,
            ),
          ],
        ),
        _i24.RouteConfig(
          MessageRoomRoute.name,
          path: 'message-room/:id',
        ),
        _i24.RouteConfig(
          DebugRoute.name,
          path: 'debug',
        ),
        _i24.RouteConfig(
          ProfileRoute.name,
          path: 'profile/:id',
        ),
        _i24.RouteConfig(
          RoomCreationRoute.name,
          path: 'create-room',
        ),
        _i24.RouteConfig(
          EntryAddressRoute.name,
          path: 'enter-address',
        ),
        _i24.RouteConfig(
          MyRoute.name,
          path: 'account',
        ),
        _i24.RouteConfig(
          ProfileUpdateRoute.name,
          path: 'update-profile',
        ),
        _i24.RouteConfig(
          SettingsRoute.name,
          path: 'setting',
        ),
        _i24.RouteConfig(
          TagsSelectionRoute.name,
          path: 'select-tag',
        ),
        _i24.RouteConfig(
          TagCreationRoute.name,
          path: 'create-tag',
        ),
        _i24.RouteConfig(
          EntryDescriptionRoute.name,
          path: 'entry-description',
        ),
      ];
}

/// generated route for
/// [_i1.LoginPage]
class LoginRoute extends _i24.PageRouteInfo<void> {
  const LoginRoute()
      : super(
          LoginRoute.name,
          path: 'login',
        );

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i2.MyBottomNavigationBar]
class HomeRouter extends _i24.PageRouteInfo<void> {
  const HomeRouter({List<_i24.PageRouteInfo>? children})
      : super(
          HomeRouter.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'HomeRouter';
}

/// generated route for
/// [_i3.EmptyRouterPage]
class CreateProfileRoute extends _i24.PageRouteInfo<void> {
  const CreateProfileRoute({List<_i24.PageRouteInfo>? children})
      : super(
          CreateProfileRoute.name,
          path: '/empty-router-page',
          initialChildren: children,
        );

  static const String name = 'CreateProfileRoute';
}

/// generated route for
/// [_i4.MessageRoomPage]
class MessageRoomRoute extends _i24.PageRouteInfo<MessageRoomRouteArgs> {
  MessageRoomRoute({
    _i25.Key? key,
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

  final _i25.Key? key;

  final String id;

  @override
  String toString() {
    return 'MessageRoomRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i5.DebugPage]
class DebugRoute extends _i24.PageRouteInfo<void> {
  const DebugRoute()
      : super(
          DebugRoute.name,
          path: 'debug',
        );

  static const String name = 'DebugRoute';
}

/// generated route for
/// [_i6.ProfilePage]
class ProfileRoute extends _i24.PageRouteInfo<ProfileRouteArgs> {
  ProfileRoute({
    _i25.Key? key,
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

  final _i25.Key? key;

  final String id;

  @override
  String toString() {
    return 'ProfileRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i7.RoomCreationPage]
class RoomCreationRoute extends _i24.PageRouteInfo<RoomCreationRouteArgs> {
  RoomCreationRoute({_i25.Key? key})
      : super(
          RoomCreationRoute.name,
          path: 'create-room',
          args: RoomCreationRouteArgs(key: key),
        );

  static const String name = 'RoomCreationRoute';
}

class RoomCreationRouteArgs {
  const RoomCreationRouteArgs({this.key});

  final _i25.Key? key;

  @override
  String toString() {
    return 'RoomCreationRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i8.EntryAddressPage]
class EntryAddressRoute extends _i24.PageRouteInfo<EntryAddressRouteArgs> {
  EntryAddressRoute({_i25.Key? key})
      : super(
          EntryAddressRoute.name,
          path: 'enter-address',
          args: EntryAddressRouteArgs(key: key),
        );

  static const String name = 'EntryAddressRoute';
}

class EntryAddressRouteArgs {
  const EntryAddressRouteArgs({this.key});

  final _i25.Key? key;

  @override
  String toString() {
    return 'EntryAddressRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i9.MyPage]
class MyRoute extends _i24.PageRouteInfo<void> {
  const MyRoute()
      : super(
          MyRoute.name,
          path: 'account',
        );

  static const String name = 'MyRoute';
}

/// generated route for
/// [_i10.ProfileUpdatePage]
class ProfileUpdateRoute extends _i24.PageRouteInfo<void> {
  const ProfileUpdateRoute()
      : super(
          ProfileUpdateRoute.name,
          path: 'update-profile',
        );

  static const String name = 'ProfileUpdateRoute';
}

/// generated route for
/// [_i11.SettingsPage]
class SettingsRoute extends _i24.PageRouteInfo<void> {
  const SettingsRoute()
      : super(
          SettingsRoute.name,
          path: 'setting',
        );

  static const String name = 'SettingsRoute';
}

/// generated route for
/// [_i12.TagsSelectionPage]
class TagsSelectionRoute extends _i24.PageRouteInfo<TagsSelectionRouteArgs> {
  TagsSelectionRoute({
    required List<_i27.Tag> beingSet,
    _i25.Key? key,
  }) : super(
          TagsSelectionRoute.name,
          path: 'select-tag',
          args: TagsSelectionRouteArgs(
            beingSet: beingSet,
            key: key,
          ),
        );

  static const String name = 'TagsSelectionRoute';
}

class TagsSelectionRouteArgs {
  const TagsSelectionRouteArgs({
    required this.beingSet,
    this.key,
  });

  final List<_i27.Tag> beingSet;

  final _i25.Key? key;

  @override
  String toString() {
    return 'TagsSelectionRouteArgs{beingSet: $beingSet, key: $key}';
  }
}

/// generated route for
/// [_i13.TagCreationPage]
class TagCreationRoute extends _i24.PageRouteInfo<TagCreationRouteArgs> {
  TagCreationRoute({_i25.Key? key})
      : super(
          TagCreationRoute.name,
          path: 'create-tag',
          args: TagCreationRouteArgs(key: key),
        );

  static const String name = 'TagCreationRoute';
}

class TagCreationRouteArgs {
  const TagCreationRouteArgs({this.key});

  final _i25.Key? key;

  @override
  String toString() {
    return 'TagCreationRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i14.EntryDescriptionPage]
class EntryDescriptionRoute
    extends _i24.PageRouteInfo<EntryDescriptionRouteArgs> {
  EntryDescriptionRoute({
    required String title,
    required String? value,
    _i25.Key? key,
  }) : super(
          EntryDescriptionRoute.name,
          path: 'entry-description',
          args: EntryDescriptionRouteArgs(
            title: title,
            value: value,
            key: key,
          ),
        );

  static const String name = 'EntryDescriptionRoute';
}

class EntryDescriptionRouteArgs {
  const EntryDescriptionRouteArgs({
    required this.title,
    required this.value,
    this.key,
  });

  final String title;

  final String? value;

  final _i25.Key? key;

  @override
  String toString() {
    return 'EntryDescriptionRouteArgs{title: $title, value: $value, key: $key}';
  }
}

/// generated route for
/// [_i3.EmptyRouterPage]
class RoomsTab extends _i24.PageRouteInfo<void> {
  const RoomsTab({List<_i24.PageRouteInfo>? children})
      : super(
          RoomsTab.name,
          path: 'rooms',
          initialChildren: children,
        );

  static const String name = 'RoomsTab';
}

/// generated route for
/// [_i3.EmptyRouterPage]
class ParticipatingTab extends _i24.PageRouteInfo<void> {
  const ParticipatingTab({List<_i24.PageRouteInfo>? children})
      : super(
          ParticipatingTab.name,
          path: 'participating-rooms',
          initialChildren: children,
        );

  static const String name = 'ParticipatingTab';
}

/// generated route for
/// [_i3.EmptyRouterPage]
class MessagesTab extends _i24.PageRouteInfo<void> {
  const MessagesTab({List<_i24.PageRouteInfo>? children})
      : super(
          MessagesTab.name,
          path: 'rooms',
          initialChildren: children,
        );

  static const String name = 'MessagesTab';
}

/// generated route for
/// [_i15.RoomListPage]
class RoomListRoute extends _i24.PageRouteInfo<void> {
  const RoomListRoute()
      : super(
          RoomListRoute.name,
          path: '',
        );

  static const String name = 'RoomListRoute';
}

/// generated route for
/// [_i16.RoomDetailPage]
class RoomDetailRoute extends _i24.PageRouteInfo<RoomDetailRouteArgs> {
  RoomDetailRoute({
    required String roomId,
    _i25.Key? key,
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

  final _i25.Key? key;

  @override
  String toString() {
    return 'RoomDetailRouteArgs{roomId: $roomId, key: $key}';
  }
}

/// generated route for
/// [_i17.ParticipatingRoomListPage]
class ParticipatingRoomListRoute extends _i24.PageRouteInfo<void> {
  const ParticipatingRoomListRoute()
      : super(
          ParticipatingRoomListRoute.name,
          path: '',
        );

  static const String name = 'ParticipatingRoomListRoute';
}

/// generated route for
/// [_i18.JoinRequestsConfirmationPage]
class JoinRequestsConfirmationRoute
    extends _i24.PageRouteInfo<JoinRequestsConfirmationRouteArgs> {
  JoinRequestsConfirmationRoute({
    _i25.Key? key,
    required String id,
  }) : super(
          JoinRequestsConfirmationRoute.name,
          path: 'request-confirmation/:id',
          args: JoinRequestsConfirmationRouteArgs(
            key: key,
            id: id,
          ),
          rawPathParams: {'id': id},
        );

  static const String name = 'JoinRequestsConfirmationRoute';
}

class JoinRequestsConfirmationRouteArgs {
  const JoinRequestsConfirmationRouteArgs({
    this.key,
    required this.id,
  });

  final _i25.Key? key;

  final String id;

  @override
  String toString() {
    return 'JoinRequestsConfirmationRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i19.MessageRoomListPage]
class MessageRoomListRoute extends _i24.PageRouteInfo<void> {
  const MessageRoomListRoute()
      : super(
          MessageRoomListRoute.name,
          path: '',
        );

  static const String name = 'MessageRoomListRoute';
}

/// generated route for
/// [_i20.BasicProfileEntryPage]
class BasicProfileEntryRoute extends _i24.PageRouteInfo<void> {
  const BasicProfileEntryRoute()
      : super(
          BasicProfileEntryRoute.name,
          path: 'create-profile-basic',
        );

  static const String name = 'BasicProfileEntryRoute';
}

/// generated route for
/// [_i21.DetailedProfileEntryPage]
class DetailedProfileEntryRoute extends _i24.PageRouteInfo<void> {
  const DetailedProfileEntryRoute()
      : super(
          DetailedProfileEntryRoute.name,
          path: 'create-profile-detail',
        );

  static const String name = 'DetailedProfileEntryRoute';
}

/// generated route for
/// [_i22.ProfileIconImageEntryPage]
class ProfileIconImageEntryRoute extends _i24.PageRouteInfo<void> {
  const ProfileIconImageEntryRoute()
      : super(
          ProfileIconImageEntryRoute.name,
          path: 'create-profile-icon-image',
        );

  static const String name = 'ProfileIconImageEntryRoute';
}

/// generated route for
/// [_i23.EntryProfileSubImagePage]
class EntryProfileSubImageRoute extends _i24.PageRouteInfo<void> {
  const EntryProfileSubImageRoute()
      : super(
          EntryProfileSubImageRoute.name,
          path: 'create-profile-sub-image',
        );

  static const String name = 'EntryProfileSubImageRoute';
}
