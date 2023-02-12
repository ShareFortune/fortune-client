import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fortune_client/gen/assets.gen.dart';
import 'package:fortune_client/view/theme/app_text_theme.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:gap/gap.dart';

class RoomHeader extends StatelessWidget {
  const RoomHeader({
    super.key,
    required this.theme,
    required this.iconUrl,
  });

  final AppTheme theme;
  final String iconUrl;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        /// ホストアイコン
        _headerIcon(),
        const Gap(10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// タイトル
            _headerTitle(theme),

            /// 開催地
            _headerAddress(theme),
          ],
        ),
      ],
    );
  }

  CircleAvatar _headerIcon() {
    // ClipOval(
    //   child: Image.network(
    //     room.data.hostMainImageURL,
    //     width: 50,
    //     height: 50,
    //     fit: BoxFit.cover,
    //   ),
    // );
    return const CircleAvatar(radius: 25);
  }

  Widget _headerTitle(AppTheme theme) {
    return Text(
      "タイトル",
      style: theme.textTheme.h30.bold(),
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    );
  }

  Widget _headerAddress(AppTheme theme) {
    return Row(children: [
      SvgPicture.asset(
        Assets.images.icons.iconLocation.path,
        fit: BoxFit.contain,
      ),
      const Gap(3),
      Text(
        "開催場所",
        style: theme.textTheme.h20.paint(
          theme.appColors.subText2,
        ),
      ),
    ]);
  }
}
