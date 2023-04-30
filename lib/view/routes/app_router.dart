import 'package:flutter/material.dart';
import 'package:fortune_client/view/pages/common/home/home_page.dart';
import 'package:fortune_client/view/pages/common/input/input_long_text_page.dart';
import 'package:fortune_client/view/pages/common/input/input_text_page.dart';
import 'package:fortune_client/view/pages/debug/debug_page.dart';
import 'package:fortune_client/view/pages/common/launch/launch_page.dart';
import 'package:fortune_client/view/pages/message/message_room/message_room_page.dart';
import 'package:fortune_client/view/pages/my/edit/edit_profile_page.dart';
import 'package:fortune_client/view/pages/my/my/my_page.dart';
import 'package:fortune_client/view/pages/profile/profile/profile_page.dart';
import 'package:fortune_client/view/pages/request/join_requests_confirmation/join_requests_confirmation_page.dart';
import 'package:fortune_client/view/pages/rooms/input/room_input_page.dart';
import 'package:fortune_client/view/pages/rooms/room_detail/room_detail_page.dart';
import 'package:fortune_client/view/pages/settings/settings_page.dart';
import 'package:fortune_client/view/pages/tags/search/search_tags_page.dart';
import 'package:fortune_client/view/routes/route_path.dart';

class AppRouter {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    final arguments = settings.arguments;

    switch (RoutePath.from(settings.name)) {
      case RoutePath.launch:
        return _buildRoute(const LaunchPage());

      case RoutePath.debug:
        return _buildRoute(const DebugPage());

      case RoutePath.login:

      case RoutePath.home:
        return _fadePageRouteBuilder(const HomePage());

      case RoutePath.profileInput:

      case RoutePath.profileEdit:
        arguments as EditProfilePageArguments;
        return _fadePageRouteBuilder(EditProfilePage(arguments));

      case RoutePath.profile:

        /// ここで、ProfilePageに渡す引数を設定する
        return _slidePageRouteBuilder(
          const ProfilePage(),
          offset: const Offset(0.0, 1.0),
        );

      case RoutePath.my:
        return _fadePageRouteBuilder(const MyPage());

      case RoutePath.room:

      case RoutePath.roomInput:
        arguments as RoomInputPageArguments;
        return _slidePageRouteBuilder(
          RoomInputPage(arguments),
          offset: const Offset(0.0, 1.0),
        );

      case RoutePath.roomDetail:
        arguments as RoomDetailPageArguments;
        return _slidePageRouteBuilder(RoomDetailPage(arguments));

      case RoutePath.participatingRoom:

      case RoutePath.messageRoom:
        arguments as MessageRoomPageArguments;
        return _slidePageRouteBuilder(MessageRoomPage(arguments));

      case RoutePath.joinRequestsConfirm:
        arguments as JoinRequestsConfirmationPageAuguments;
        return _slidePageRouteBuilder(JoinRequestsConfirmationPage(arguments));

      case RoutePath.messageRoomList:

      case RoutePath.tagInput:

      case RoutePath.setting:
        return _slidePageRouteBuilder(const SettingsPage());

      case RoutePath.settingAccount:

      case RoutePath.settingNotification:

      case RoutePath.settingPrivacy:

      case RoutePath.settingTerms:

      case RoutePath.settingHelp:

      case RoutePath.settingAbout:

      case RoutePath.searchTag:
        arguments as SearchTagsPageAuguments;
        return _slidePageRouteBuilder(SearchTagsPage(arguments));

      case RoutePath.inputText:
        arguments as InputTextPageArguments;
        return _slidePageRouteBuilder(InputTextPage(arguments));

      case RoutePath.inputLongText:
        arguments as InputLongTextPageArguments;
        return _slidePageRouteBuilder(InputLongTextPage(arguments));

      case RoutePath.error:
      case RoutePath.unknown:
      default:
        break;
    }
    return null;
  }

  static Route<dynamic>? _buildRoute(
    Widget child, {
    RouteSettings? settings,
    bool fullscreenDialog = false,
  }) {
    return MaterialPageRoute<dynamic>(
      settings: settings,
      fullscreenDialog: fullscreenDialog,
      builder: (BuildContext context) => child,
    );
  }

  static PageRouteBuilder<dynamic> _slidePageRouteBuilder(
    Widget child, {
    RouteSettings? settings,
    Offset offset = const Offset(1.0, 0.0),
    Duration transitionDuration = const Duration(milliseconds: 200),
  }) {
    return PageRouteBuilder(
      settings: settings,
      transitionDuration: transitionDuration,
      reverseTransitionDuration: transitionDuration,
      pageBuilder: (context, animation, secondaryAnimation) => child,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        final Animatable<Offset> tween = Tween(begin: offset, end: Offset.zero);

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }

  static PageRouteBuilder<dynamic> _fadePageRouteBuilder(
    Widget child, {
    RouteSettings? settings,
    Duration transitionDuration = const Duration(milliseconds: 200),
  }) {
    return PageRouteBuilder(
      settings: settings,
      transitionDuration: transitionDuration,
      reverseTransitionDuration: transitionDuration,
      pageBuilder: (context, animation, secondaryAnimation) => child,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        final Animatable<double> tween = Tween(begin: 0.0, end: 1.0);

        return FadeTransition(
          opacity: animation.drive(tween),
          child: child,
        );
      },
    );
  }
}
