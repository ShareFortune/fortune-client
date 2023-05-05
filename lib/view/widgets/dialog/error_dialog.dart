import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class ErrorDialog {
  static bool _isDisplay = false;

  /// ダイアログが表示されているか確認
  static checkIsDisplay(Future<void> Function()? callback) async {
    if (_isDisplay) return;
    _isDisplay = true;
    callback?.call().then((_) {
      _isDisplay = false;
    });
  }

  /// 基本的なエラーダイアログ
  static show(BuildContext context, String content) async {
    checkIsDisplay(() => _showErrorDialog(context, content));
  }

  /// リロードを伴うエラーダイアログ
  static showWithReload(
    BuildContext context,
    String content,
    VoidCallback? reload,
  ) {
    checkIsDisplay(
      () => _showErrorDialogWithReload(
        context,
        content,
        () => _clickHandler(context, reload),
      ),
    );
  }

  /// リロードとキャンセルを伴うエラーダイアログ
  static showWithReloadAndCancel(
    BuildContext context,
    String content,
    VoidCallback? reload,
    VoidCallback? onCancel,
  ) {
    checkIsDisplay(
      () => _showErrorDialogWithReloadAndCancel(
        context,
        content,
        () => _clickHandler(context, reload),
        () => onCancel?.call(),
      ),
    );
  }

  /// ボタンクリック時処理
  static _clickHandler(BuildContext context, VoidCallback? callback) {
    _isDisplay = false;
    checkIsDisplay(() async => callback?.call());
  }
}

Future<void> _showErrorDialog(BuildContext context, String content) {
  return showPlatformDialog(
    context: context,
    builder: (_) => WillPopScope(
      child: PlatformAlertDialog(
        title: null,
        content: Text(content),
        actions: <Widget>[
          // Slidableで使うと"Looking up a deactivated widget's ancestor〜"エラーになるのでBuilderでラップ
          // 参考: https://zenn.dev/ryouhei_furugen/articles/2fa82ba62c88da
          Builder(
            builder: (context) {
              return PlatformDialogAction(
                child: PlatformText("OK"),
                onPressed: () => Navigator.pop(context),
              );
            },
          ),
        ],
      ),
      onWillPop: () async => false,
    ),
  );
}

Future<dynamic> _showErrorDialogWithReload(
  BuildContext context,
  String content,
  VoidCallback? onReload,
) {
  return showPlatformDialog(
    context: context,
    builder: (_) => WillPopScope(
      child: PlatformAlertDialog(
        title: Text("タイトル"),
        content: Text(content),
        actions: <Widget>[
          Builder(builder: (context) {
            return PlatformDialogAction(
                child: PlatformText("テキスト"),
                onPressed: () {
                  Navigator.pop(context);
                  onReload?.call();
                });
          }),
        ],
      ),
      onWillPop: () async => false,
    ),
  );
}

Future<void> _showErrorDialogWithReloadAndCancel(
  BuildContext context,
  String content,
  VoidCallback? onReload,
  VoidCallback? onCancel,
) async {
  await showPlatformDialog(
    context: context,
    builder: (_) => WillPopScope(
      child: PlatformAlertDialog(
        title: const Text("タイトル"),
        content: Text(content),
        actions: <Widget>[
          Builder(builder: (context) {
            return PlatformDialogAction(
              child: PlatformText(content),
              onPressed: () {
                Navigator.pop(context);
                onReload?.call();
              },
            );
          }),
          Builder(builder: (context) {
            return PlatformDialogAction(
              child: PlatformText('キャンセル'),
              onPressed: () {
                Navigator.pop(context);
                onCancel?.call();
              },
            );
          }),
        ],
      ),
      onWillPop: () async => false,
    ),
  );
}
