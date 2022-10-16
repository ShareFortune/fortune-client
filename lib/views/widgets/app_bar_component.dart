import 'package:flutter/material.dart';

/// 本アプリの画面上部に表示する
/// ナビゲーションバーで管理される全ての画面のAppBarには[FortuneAppBar]が適用される。
class FortuneAppBarComponent extends StatelessWidget {
  const FortuneAppBarComponent({
    super.key,
    required this.myIconPath,
    required this.onPressedMyIconButton,
    required this.bottomWidget,
  });

  /// マイアカウントのアイコン
  final String myIconPath;

  /// マイアカウントのアイコンボタンがプレスされた時の関数
  /// クリック時はマイアカウントページへ移動
  final void Function()? onPressedMyIconButton;

  /// [FortuneAppBar]の下部に表示されるウィジット
  /// [bottomWidget]内でのクリックイベントは実装された状態で受け取る
  final PreferredSizeWidget? bottomWidget;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      floating: true,
      snap: true,
      elevation: 0,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      centerTitle: false,
      title: const Text("フォーチュン",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          )),
      actions: [
        /// アイコンボタン
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            elevation: 0,
            backgroundColor: Colors.transparent,
          ),
          onPressed: onPressedMyIconButton,
          child: CircleAvatar(
            radius: 15,
            backgroundImage: NetworkImage(myIconPath),
          ),
        ),
      ],
      bottom: bottomWidget,
    );
  }
}
