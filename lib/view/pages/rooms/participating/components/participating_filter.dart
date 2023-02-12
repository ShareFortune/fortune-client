import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fortune_client/gen/assets.gen.dart';
import 'package:fortune_client/l10n/locale_keys.g.dart';
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
              /// すべて表示
              TextButton(
                onPressed: onPressedShowAllRooms,
                child: Text(
                  LocaleKeys.participating_room_list_page_tab_all.tr(),
                ),
              ),

              /// リクエスト中を表示
              TextButton(
                onPressed: onPressedShowRequestingRooms,
                child: Text(
                  LocaleKeys.participating_room_list_page_tab_requesting.tr(),
                ),
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
