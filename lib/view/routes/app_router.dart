import 'package:flutter/material.dart';
import 'package:fortune_client/view/pages/common/home/home_page.dart';
import 'package:fortune_client/view/pages/launch/launch_page.dart';
import 'package:fortune_client/view/routes/route_path.dart';

class AppRouter {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    print(settings.name);
    switch (RoutePath.from(settings.name)) {
      case RoutePath.launch:
        return _buildRoute(
          const LaunchPage(),
          settings: settings,
        );
      case RoutePath.debug:
        // TODO: Handle this case.
        break;
      case RoutePath.login:
        // TODO: Handle this case.
        break;
      case RoutePath.home:
        print('home');
        return _fadePageRouteBuilder(
          const HomePage(),
        );
      case RoutePath.profileInput:
        // TODO: Handle this case.
        break;
      case RoutePath.profileEdit:
        // TODO: Handle this case.
        break;
      case RoutePath.profile:
        // TODO: Handle this case.
        break;
      case RoutePath.my:
        // TODO: Handle this case.
        break;
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
        // TODO: Handle this case.
        break;
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
        // TODO: Handle this case.
        break;
      case RoutePath.tagInput:
        // TODO: Handle this case.
        break;
      case RoutePath.setting:
        // TODO: Handle this case.
        break;
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
        // TODO: Handle this case.
        break;
      case RoutePath.searchAddress:
        // TODO: Handle this case.
        break;
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
      builder: (BuildContext context) => child,
      settings: settings,
      fullscreenDialog: fullscreenDialog,
    );
  }

  static PageRouteBuilder<dynamic> _slidePageRouteBuilder(
    Widget child,
    Offset offset, {
    RouteSettings? settings,
  }) {
    return PageRouteBuilder(
      settings: settings,
      transitionDuration: const Duration(milliseconds: 300),
      reverseTransitionDuration: const Duration(milliseconds: 300),
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
    int transitionDuration = 300,
  }) {
    return PageRouteBuilder(
      settings: settings,
      transitionDuration: Duration(milliseconds: transitionDuration),
      reverseTransitionDuration: const Duration(milliseconds: 300),
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
