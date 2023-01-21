import 'package:flutter/material.dart';
import 'package:fortune_client/data/model/participating_user/participating_user.dart';
import 'package:fortune_client/gen/assets.gen.dart';
import 'package:fortune_client/view/theme/app_text_theme.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RoomMembersContainer extends HookConsumerWidget {
  const RoomMembersContainer(this.members, this.onTap, {super.key});

  final List<ParticipatingUser> members;
  final Function(BuildContext, String id) onTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _memberCard(
                theme,
                image: Assets.images.insta2,
                name: "あんな",
                info: "23歳・東京",
                onTap: (id) => onTap(context, id),
              ),
              const Gap(5),
              _memberCard(
                theme,
                image: Assets.images.insta3,
                name: "広瀬",
                info: "28歳・東京",
                onTap: (id) => onTap(context, id),
              ),
            ],
          ),
          const Gap(20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _memberCard(
                theme,
                image: Assets.images.insta4,
                name: "miho",
                info: "21歳・千葉",
                onTap: (id) => onTap(context, id),
              ),
              const Gap(5),
              _memberCard(
                theme,
                image: Assets.images.insta5,
                name: "倖田來未",
                info: "43歳・埼玉",
                onTap: (id) => onTap(context, id),
              ),
            ],
          ),
          Row(),
          Row(),
        ],
      ),
    );
  }

  Widget _memberCard(
    AppTheme theme, {
    required AssetGenImage image,
    required String name,
    required String info,
    required Function(String id) onTap,
  }) {
    return Expanded(
      child: InkWell(
        onTap: () => onTap("id"),
        child: Card(
          elevation: 4,
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          clipBehavior: Clip.antiAlias,
          child: Column(
            children: [
              Container(
                height: 150,
                // width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: image.provider(),
                  ),
                ),
              ),
              Column(
                children: [
                  const Gap(10),
                  Text(
                    name,
                    style: theme.textTheme.h40.bold(),
                  ),
                  const Gap(10),
                  Text(
                    info,
                    style: theme.textTheme.h30,
                  ),
                  const Gap(10),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
