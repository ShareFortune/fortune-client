import 'package:flutter/material.dart';

// アプリ内の画面遷移を管理するクラス
class NavigateHandler {
  // グローバルキーで共有されるNavigatorStateオブジェクトを格納する
  final navigatorKey = GlobalKey<NavigatorState>();

  Future<dynamic>? navigateTo(String routeName) {
    return navigatorKey.currentState?.pushNamed(routeName);
  }

  void goBack() => navigatorKey.currentState?.pop();
}
