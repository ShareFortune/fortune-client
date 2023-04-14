import 'package:flutter/material.dart';
import 'package:fortune_client/view/routes/route_path.dart';

// アプリ内の画面遷移を管理するクラス
class NavigateHandler {
  // グローバルキーで共有されるNavigatorStateオブジェクトを格納する
  final navigatorKey = GlobalKey<NavigatorState>();

  Future<dynamic>? navigateTo(RoutePath route) {
    return navigatorKey.currentState?.pushNamed(route.name);
  }

  Future<dynamic>? navigateToRemoveUntil(RoutePath route) {
    return navigatorKey.currentState?.pushNamedAndRemoveUntil(
      route.name,
      (Route<dynamic> route) => false,
    );
  }

  void goBack() => navigatorKey.currentState?.pop();
}
