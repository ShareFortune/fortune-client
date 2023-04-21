import 'package:flutter/material.dart';
import 'package:fortune_client/view/pages/common/home/home_page.dart';
import 'package:fortune_client/view/pages/common/input/input_long_text_page.dart';
import 'package:fortune_client/view/pages/common/input/input_text_page.dart';
import 'package:fortune_client/view/pages/debug/debug_page.dart';
import 'package:fortune_client/view/pages/launch/launch_page.dart';
import 'package:fortune_client/view/pages/my/edit/edit_profile_page.dart';
import 'package:fortune_client/view/pages/my/my/my_page.dart';
import 'package:fortune_client/view/pages/profile/profile/profile_page.dart';
import 'package:fortune_client/view/pages/rooms/room_detail/room_detail_page.dart';
import 'package:fortune_client/view/pages/settings/settings_page.dart';
import 'package:fortune_client/view/pages/tags/search/search_tags_page.dart';
import 'package:fortune_client/view/pages/tags/select/select_tags_page.dart';
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
        // TODO: Handle this case.
        break;
      case RoutePath.home:
        return _fadePageRouteBuilder(const HomePage());

      case RoutePath.profileInput:
        // TODO: Handle this case.
        break;

      case RoutePath.profileEdit:
        arguments as EditProfilePageArguments;
        return _fadePageRouteBuilder(EditProfilePage(arguments));

      case RoutePath.profile:

        /// ここで、ProfilePageに渡す引数を設定する
        return _fadePageRouteBuilder(const ProfilePage());

      case RoutePath.my:
        return _fadePageRouteBuilder(const MyPage());

      case RoutePath.room:
        // TODO: Handle this case.
        break;
      case RoutePath.roomInput:
        // TODO: Handle this case.
        break;
      case RoutePath.roomEdit:
        // TODO: Handle this case.
        break;
      case RoutePath.roomDetail:

        /// ここで、RoomDetailPageに渡す引数を設定する
        return _slidePageRouteBuilder(const RoomDetailPage(""));

      case RoutePath.participatingRoom:
        // TODO: Handle this case.
        break;
      case RoutePath.participatingRoomAll:
        // TODO: Handle this case.
        break;
      case RoutePath.message:
        // TODO: Handle this case.
        break;
      case RoutePath.messageRoom:
        // TODO: Handle this case.
        break;
      case RoutePath.tag:
        return _slidePageRouteBuilder(SelectTagsPage(List.empty()));

      case RoutePath.tagInput:
        // TODO: Handle this case.
        break;
      case RoutePath.setting:
        return _slidePageRouteBuilder(const SettingsPage());

      case RoutePath.settingAccount:
        // TODO: Handle this case.
        break;
      case RoutePath.settingNotification:
        // TODO: Handle this case.
        break;
      case RoutePath.settingPrivacy:
        // TODO: Handle this case.
        break;
      case RoutePath.settingTerms:
        // TODO: Handle this case.
        break;
      case RoutePath.settingHelp:
        // TODO: Handle this case.
        break;
      case RoutePath.settingAbout:
        // TODO: Handle this case.
        break;
      case RoutePath.searchRoom:
        // TODO: Handle this case.
        break;
      case RoutePath.searchTag:
        arguments as SearchTagsPageAuguments;
        return _slidePageRouteBuilder(SearchTagsPage(arguments));

      case RoutePath.searchAddress:
        // TODO: Handle this case.
        break;

      case RoutePath.inputText:
        arguments as InputTextPageArguments;
        return _slidePageRouteBuilder(InputTextPage(arguments));

      case RoutePath.inputLongText:
        arguments as InputLongTextPageArguments;
        return _slidePageRouteBuilder(InputLongTextPage(arguments));

      case RoutePath.error:
        // TODO: Handle this case.
        break;
      case RoutePath.unknown:
        // TODO: Handle this case.
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
