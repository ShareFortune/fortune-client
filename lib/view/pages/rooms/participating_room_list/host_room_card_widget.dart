import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fortune_client/view/pages/rooms/participating_room_list/participating_room_list_state.dart';
import 'package:fortune_client/view/theme/app_text_theme.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/members_widget.dart';
import 'package:gap/gap.dart';

class HostRoomCardWidget extends ConsumerWidget {
  const HostRoomCardWidget({
    super.key,
    required this.room,
    required this.onPressedRequestConfirmationButton,
  });

  final HostRoomListItemState room;
  final Function() onPressedRequestConfirmationButton;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);

    return Container(
      padding: const EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: theme.appColors.divider),
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: theme.appColors.shadow,
            spreadRadius: 0,
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          title(theme),
          const Gap(10),
          membersWidget(theme, ["", ""]),
          room.actinon < 1 ? const Gap(0) : const Gap(15),
          room.actinon < 1 ? const Gap(0) : content(theme),
        ],
      ),
    );
  }

  title(AppTheme theme) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          room.title,
          style: theme.textTheme.h40.bold(),
        ),
        IconButton(
          padding: EdgeInsets.zero,
          constraints: const BoxConstraints(),
          onPressed: () {},
          icon: const Icon(Icons.more_vert_outlined),
        ),
      ],
    );
  }

  content(AppTheme theme) {
    return ElevatedButton(
      onPressed: onPressedRequestConfirmationButton,
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: theme.appColors.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: RichText(
        text: TextSpan(
          style: theme.textTheme.h20.bold(),
          children: [
            const TextSpan(text: 'リクエストを確認する'),
            WidgetSpan(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  "${room.actinon}",
                  style: theme.textTheme.h30.bold(),
                ),
              ),
            ),
            const TextSpan(text: '件'),
          ],
        ),
      ),
    );
  }
}
