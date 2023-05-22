import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fortune_client/data/repository/repository.dart';
import 'package:fortune_client/foundation/constants.dart';
import 'package:fortune_client/gen/assets.gen.dart';
import 'package:fortune_client/util/logger/logger.dart';
import 'package:fortune_client/view/routes/route_navigator.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';

class LaunchPage extends StatelessWidget {
  const LaunchPage({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(milliseconds: 500)).whenComplete(() async {
      /// リモート設定を初期化
      await Future.wait([initRemoteConfig()]);

      /// バージョンチェック
      if (await verifyNeesUpdate()) {
        return navigator.navigateToRemoveUntil(RoutePath.update);
      }

      /// ローカル設定を初期化
      await initLocalConfig();

      /// ログインチェック
      if (!Repository.auth.isLogin) {
        /// ログインしていない場合はログイン画面へ
        return navigator.navigateToRemoveUntil(RoutePath.login);
      }

      /// ユーザー作成チェック
      if (!Repository.users.isCreated()) {
        /// ユーザーが作成されていない場合はユーザー作成画面へ
        return navigator.navigateToRemoveUntil(RoutePath.userInfoInput);
      }

      /// プロフィール作成チェック
      if (!Repository.profile.isCreated()) {
        /// プロフィールが作成されていない場合はプロフィール作成画面へ
        return navigator.navigateToRemoveUntil(RoutePath.profileInput);
      }

      /// ホーム画面へ
      return navigator.navigateToRemoveUntil(RoutePath.home);
    });

    /// 起動画面
    return SvgPicture.asset(
      Assets.images.bootScreen.path,
      fit: BoxFit.cover,
    );
  }

  /// ローカル設定を初期化
  Future<void> initLocalConfig() async {
    /// パッケージ情報を初期化
    await Repository.address.save();
  }

  /// リモート設定を初期化
  Future<void> initRemoteConfig() async {
    final remoteConfig = FirebaseRemoteConfig.instance;
    final settings = RemoteConfigSettings(
      fetchTimeout: const Duration(minutes: 1),
      minimumFetchInterval: const Duration(minutes: 5),
    );
    await remoteConfig.setConfigSettings(settings);
    await remoteConfig.fetchAndActivate();
  }

  /// バージョンチェック
  Future<bool> verifyNeesUpdate() async {
    /// VersionCode(buildNumber)取得
    final PackageInfo info = await PackageInfo.fromPlatform();
    int currentVersion = int.parse(info.buildNumber);

    try {
      final remoteConfig = FirebaseRemoteConfig.instance;
      int newVersion = remoteConfig.getInt(Constants.of().configVersion);

      /// バージョン比較
      return currentVersion.compareTo(newVersion).isNegative;
    } catch (e) {
      logger.e(e);
      return false;
    }
  }
}
