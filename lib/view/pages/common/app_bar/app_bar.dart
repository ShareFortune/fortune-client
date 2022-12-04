import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fortune_client/view/pages/common/app_bar/app_bar_view_model.dart';

/// 本アプリの画面上部に表示する
/// ナビゲーションバーで管理される全ての画面のAppBarには[FortuneAppBar]が適用される。
class FortuneAppBar extends ConsumerWidget {
  const FortuneAppBar({super.key, this.bottomWidget});

  /// [FortuneAppBar]の下部に表示されるウィジット
  /// [bottomWidget]内でのクリックイベントは実装された状態で受け取る
  final PreferredSizeWidget? bottomWidget;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(fortuneAppBarViewmodelProvider);
    final viewModel = ref.watch(fortuneAppBarViewmodelProvider.notifier);

    return state.when(
      error: (e, msg) => const SliverAppBar(
        title: Text("error"),
      ),
      loading: () => const SliverAppBar(
        title: Text("loading..."),
      ),
      data: (data) {
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
            /// 追加ボタン
            IconButton(
              onPressed: viewModel.onPressedAddButton,
              icon: const Icon(
                Icons.add_box_outlined,
                color: Colors.black,
              ),
            ),

            /// アイコンボタン
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 0,
                backgroundColor: Colors.transparent,
                shadowColor: Colors.transparent,
              ),
              onPressed: viewModel.onPressedMyIconButton,
              child: CircleAvatar(
                radius: 15,
                backgroundImage: NetworkImage(data.myIcon),
              ),
            ),
          ],
          bottom: bottomWidget,
        );
      },
    );
  }
}
