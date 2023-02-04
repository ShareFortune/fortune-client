import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:fortune_client/data/model/enum/age_group.dart';
import 'package:fortune_client/l10n/locale_keys.g.dart';
import 'package:fortune_client/view/pages/rooms/action/components/room_state_input_field.dart';
import 'package:fortune_client/view/pages/rooms/action/create/create_room_view_model.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/app_bar/back_app_bar.dart';
import 'package:fortune_client/view/widgets/dialog/toast.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CreateRoomPage extends HookConsumerWidget {
  CreateRoomPage({super.key});

  final titleController = TextEditingController();
  final explanationController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);
    final state = ref.watch(createRoomViewModelProvider);
    final viewModel = ref.watch(createRoomViewModelProvider.notifier);

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: theme.appColors.onBackground,
        appBar: BackAppBar(
          title: LocaleKeys.create_room_page_title.tr(),
          action: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: ElevatedButton(
                onPressed: viewModel.isPossibleToCreate()
                    ? () async {
                        if (!await viewModel.create()) {
                          _showFailedToCreateToast(context, theme);
                        }
                      }
                    : null,
                child: Text(LocaleKeys.data_room_action_create_label.tr()),
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Gap(30),

                /// タイトル
                RoomStateTitleInputField(
                  theme: theme,
                  controller: titleController,
                  onClear: () => viewModel.changeTitle(""),
                  onChanged: (value) => viewModel.changeTitle(value),
                ),

                const Gap(20),

                /// 募集人数
                RoomStateMembersNumInputField(
                  membersNum: state.membersNum,
                  onSelect: (value) =>
                      viewModel.changeMembersNum(int.parse(value)),
                ),

                const Gap(15),

                /// 対象年齢
                RoomStateAgeGroupInputField(
                  ageGroup: state.ageGroup,
                  onSelect: (value) {
                    viewModel.changeAgeGroup(
                      AgeGroup.values.firstWhere((e) => e.text == value),
                    );
                  },
                ),

                const Gap(15),

                /// 場所
                RoomStateAddressInputField(
                  addressWithId: state.addressWithId,
                  onTap: () => viewModel.navigateToEntryAddress(),
                ),

                const Gap(15),

                /// タグ
                RoomStateTagsInputField(
                  tags: state.tags,
                  onTap: () => viewModel.navigateToTagsSelection(),
                ),

                const Gap(30),

                /// 説明
                RoomStateExplanationInputField(
                  theme: theme,
                  controller: explanationController,
                  onChanged: (value) => viewModel.changeExplanation(value),
                ),

                const Gap(150),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _showFailedToCreateToast(BuildContext context, AppTheme theme) {
    showErrorToast(
      context,
      theme,
      LocaleKeys.data_room_action_create_failure.tr(),
    );
  }
}
