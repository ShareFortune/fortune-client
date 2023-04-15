import 'package:flutter/material.dart';
import 'package:fortune_client/gen/assets.gen.dart';
import 'package:fortune_client/injector.dart';
import 'package:fortune_client/view/routes/route_navigator.dart';
import 'package:fortune_client/view/routes/route_path.dart';
import 'package:lottie/lottie.dart';

class LaunchPage extends StatelessWidget {
  const LaunchPage({super.key});

  @override
  Widget build(BuildContext context) {
    /// バージョンチェック
    /// ログインチェック
    /// プロフィール作成チェック
    /// アプリ情報を保存
    /// リモート設定を初期化

    /// ホーム画面へ
    Future.delayed(const Duration(milliseconds: 1000)).whenComplete(
      () => routeNavigator.navigateTo(RoutePath.home),
    );

    /// 起動アニメーション
    /// TODO: アニメーションを作成する
    // return Expanded(child: Lottie.asset(Assets.animations.splash));
    return Container();
  }

  applyAppInfo() {
    /// アプリ情報を取得
    /// アプリ情報を保存
  }

  verifyNeesUpdate() {
    /// バージョンチェック
    /// バージョンが違う場合はアップデート画面へ
  }

  vertifyNeesLogin() {
    /// ログインチェック
    /// ログインしていない場合はログイン画面へ
  }

  vertifyNeesCreateProfile() {
    /// プロフィール作成チェック
    /// プロフィールが作成されていない場合はプロフィール作成画面へ
  }
}
