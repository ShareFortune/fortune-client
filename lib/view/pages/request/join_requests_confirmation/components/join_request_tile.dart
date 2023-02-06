import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fortune_client/gen/assets.gen.dart';
import 'package:fortune_client/util/logger/logger.dart';
import 'package:fortune_client/view/theme/app_text_theme.dart';
import 'package:fortune_client/view/theme/app_theme.dart';

class JoinRequestTile extends StatelessWidget {
  const JoinRequestTile({
    super.key,
    required this.theme,
    required this.name,
    required this.info,
    required this.image,
    required this.accept,
  });

  final AppTheme theme;
  final String name;
  final String info;
  final String image;
  final VoidCallback accept;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
      leading: ClipOval(
        child: Image.network(
          image,
          width: 45,
          height: 45,
          fit: BoxFit.cover,
          errorBuilder: (context, error, stackTrace) {
            logger.e(error);
            return const CircleAvatar(radius: 40);
          },
        ),
      ),
      title: Text(
        name,
        style: theme.textTheme.h30.paint(theme.appColors.subText1).bold(),
      ),
      subtitle: Text(
        info,
        style: theme.textTheme.h20.paint(theme.appColors.subText2),
      ),
      trailing: OutlinedButton.icon(
        onPressed: accept,
        style: OutlinedButton.styleFrom(
          minimumSize: Size.zero,
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        ),
        icon: SvgPicture.asset(
          width: 16,
          height: 16,
          fit: BoxFit.contain,
          Assets.images.icons.iconCheckCircle.path,
        ),
        label: Text(
          "参加を許可",
          style: theme.textTheme.h10.paint(theme.appColors.subText1).bold(),
        ),
      ),
    );
  }
}
