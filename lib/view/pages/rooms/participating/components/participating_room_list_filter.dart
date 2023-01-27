import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fortune_client/gen/assets.gen.dart';
import 'package:fortune_client/view/theme/app_theme.dart';

class ParticipatingRoomListFilter extends StatelessWidget {
  const ParticipatingRoomListFilter({
    super.key,
    required this.theme,
    required this.showAllRooms,
    required this.showRequestingRooms,
    required this.onTapAddIcon,
  });

  final AppTheme theme;
  final VoidCallback showAllRooms;
  final VoidCallback showRequestingRooms;
  final VoidCallback onTapAddIcon;

  @override
  Widget build(BuildContext context) {
    /// 全て表示をクリック
    onPressedShowAllRooms() {
      showAllRooms();
    }

    /// リクエスト中を表示をクリック
    onPressedShowRequestingRooms() {
      showRequestingRooms();
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
            onTap: () => onTapAddIcon(),
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
