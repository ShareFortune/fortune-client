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
    required this.onTap,
  });

  final AppTheme theme;
  final String name;
  final String info;
  final String image;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
      leading: ClipOval(
        child: Image.network(
          image,
          width: 50,
          height: 50,
          fit: BoxFit.cover,
          errorBuilder: (context, error, stackTrace) {
            logger.e(error);
            return const CircleAvatar(radius: 40);
          },
        ),
      ),
      title: Text(
        name,
        style: theme.textTheme.h40.paint(theme.appColors.subText1),
      ),
      subtitle: Text(
        info,
        style: theme.textTheme.h20.paint(theme.appColors.subText2),
      ),
      trailing: InkWell(
        onTap: () {},
        child: SvgPicture.asset(
          Assets.images.icons.iconUserAdd.path,
          color: theme.appColors.iconBtn1,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
