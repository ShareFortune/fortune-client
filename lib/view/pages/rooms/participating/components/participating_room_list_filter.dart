import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fortune_client/gen/assets.gen.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ParticipatingRoomListFilter extends HookConsumerWidget {
  ParticipatingRoomListFilter({
    super.key,
    required this.showAllRooms,
    required this.showRequestingRooms,
  });

  final VoidCallback showAllRooms;
  final VoidCallback showRequestingRooms;

  /// フィルタリングの有無
  final presenceOfFiltering = StateProvider((_) => false);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);

    /// 全て表示をクリック
    onPressedShowAllRooms() {
      showAllRooms();
      ref.watch(presenceOfFiltering.notifier).state = false;
    }

    /// リクエスト中を表示をクリック
    onPressedShowRequestingRooms() {
      showRequestingRooms();
      ref.watch(presenceOfFiltering.notifier).state = true;
    }

    return Container(
      height: 50,
      color: theme.appColors.onBackground,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          /// ルーム作成
          InkWell(
            onTap: () {},
            child: SvgPicture.asset(
              Assets.images.icons.iconAdd.path,
              fit: BoxFit.contain,
            ),
          ),

          Row(
            children: [
              TextButton(
                onPressed: onPressedShowAllRooms,
                child: const Text("すべて"),
              ),
              TextButton(
                onPressed: onPressedShowRequestingRooms,
                child: const Text("リクエスト中"),
              ),
            ],
          ),

          /// フィルター
          InkWell(
            onTap: () {},
            child: SvgPicture.asset(
              Assets.images.icons.iconSwapVert.path,
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }
}
