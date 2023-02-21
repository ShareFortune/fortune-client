import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class ErrorDialog {
  static bool _isDisplay = false;

  /// ダイアログが表示されているか確認
  static checkIsDisplay(VoidCallback? callback) {
    if (_isDisplay) return;
    _isDisplay = true;
    callback?.call();
    _isDisplay = false;
  }

  /// 基本的なエラーダイアログ
  static show(BuildContext context, String content) async {
    checkIsDisplay(() => _showErrorDialog(context, content));
  }

  /// リロードを伴うエラーダイアログ
  static showWithReload(
    BuildContext context,
    String content,
    VoidCallback? callback,
  ) {
    checkIsDisplay(
      () => _showErrorDialogWithReload(
        context,
        content,
        () => _reload(callback),
      ),
    );
  }

  /// リロードとキャンセルを伴うエラーダイアログ
  static showWithReloadAndCancel(
    BuildContext context,
    String content,
    VoidCallback? callback,
    VoidCallback? onCancel,
  ) {
    checkIsDisplay(
      () => _showErrorDialogWithReloadAndCancel(
        context,
        content,
        () => _reload(callback),
        onCancel,
      ),
    );
  }

  static void _reload(VoidCallback? callback) {
    _isDisplay = false;
    checkIsDisplay(callback);
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
  VoidCallback reload,
) {
  return showPlatformDialog(
    context: context,
    builder: (_) => WillPopScope(
      child: PlatformAlertDialog(
        title: Text("タイトル"),
        content: Text(content),
        actions: <Widget>[
          PlatformDialogAction(
            child: PlatformText("テキスト"),
            onPressed: reload,
          ),
        ],
      ),
      onWillPop: () async => false,
    ),
  );
}

Future<void> _showErrorDialogWithReloadAndCancel(
  BuildContext context,
  String content,
  VoidCallback? onPressed,
  VoidCallback? onCancel,
) async {
  await showPlatformDialog(
    context: context,
    builder: (_) => WillPopScope(
      child: PlatformAlertDialog(
        title: Text("タイトル"),
        content: Text(content),
        actions: <Widget>[
          PlatformDialogAction(
            child: PlatformText(content),
            onPressed: onPressed,
          ),
          PlatformDialogAction(
            child: PlatformText('キャンセル'),
            onPressed: onCancel,
          ),
        ],
      ),
      onWillPop: () async => false,
    ),
  );
}
