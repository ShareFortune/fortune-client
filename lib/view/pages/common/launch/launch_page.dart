import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fortune_client/gen/assets.gen.dart';
import 'package:fortune_client/view/routes/route_navigator.dart';

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
      () => navigator.navigateToRemoveUntil(RoutePath.home),
    );

    /// 起動画面
    return SvgPicture.asset(
      Assets.images.bootScreen.path,
      fit: BoxFit.cover,
    );
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
