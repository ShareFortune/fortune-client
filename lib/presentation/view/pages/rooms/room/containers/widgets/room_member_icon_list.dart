import 'package:bottom_sheet/bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../profile/profile/containers/page.dart';
import '../../components/widgets/room_member_icon_list.dart';

class RoomMemberIconListContainer extends ConsumerWidget {
  const RoomMemberIconListContainer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    onTapParticipantIcon() {
      showFlexibleBottomSheet(
        context: context,
        minHeight: 0.8,
        initHeight: 0.8,
        maxHeight: 1.0,
        bottomSheetColor: Colors.transparent,
        builder: (context, scrollController, bottomSheetOffset) {
          return SingleChildScrollView(
            controller: scrollController,
            physics: const ClampingScrollPhysics(),
            child: const ProfilePegeContainer(),
          );
        },
      );
    }

    return RoomMemberIconListComponent(
      onTapParticipantIcon: onTapParticipantIcon,
    );
  }
}
