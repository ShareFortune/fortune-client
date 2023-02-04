import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:fortune_client/data/model/enum/age_group.dart';
import 'package:fortune_client/l10n/locale_keys.g.dart';
import 'package:fortune_client/view/pages/rooms/action/components/room_state_input_field.dart';
import 'package:fortune_client/view/pages/rooms/action/components/room_state_selective_form.dart';
import 'package:fortune_client/view/pages/rooms/action/components/room_state_transition_tile.dart';
import 'package:fortune_client/view/pages/rooms/action/create/create_room_view_model.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/app_bar/back_app_bar.dart';
import 'package:fortune_client/view/widgets/dialog/toast.dart';
import 'package:fortune_client/view/widgets/form_field/base_text_field.dart';
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

    ///
    /// タイトル
    ///
    final titleWidget = RoomStateInputField(
      theme: theme,
      title: LocaleKeys.data_room_title_title.tr(),
      content: BaseTextField(
        controller: titleController,
        maxLength: 20,
        onClear: () => viewModel.changeTitle(""),
        onChanged: (value) => viewModel.changeTitle(value),
        hintText: LocaleKeys.create_room_page_roomTitleHint.tr(),
      ),
    );

    ///
    /// 募集人数
    ///
    final membersNumWidget = RoomStateSelectiveForm(
      title: LocaleKeys.data_room_membersNum_title.tr(),
      value: state.membersNum != null
          ? LocaleKeys.data_room_membersNum_data_all.tr(
              args: [state.membersNum.toString()],
            )
          : null,
      separator: "人",
      items: List.generate(7, (index) => "${index + 4}").toList(),
      onSelect: (value) {
        viewModel.changeMembersNum(int.parse(value));
      },
    );

    ///
    /// 対象年齢
    ///
    final ageGroupWidget = RoomStateSelectiveForm(
      title: LocaleKeys.data_room_age_title.tr(),
      value: state.ageGroup?.text,
      items: AgeGroup.values.map((e) => e.text).toList(),
      onSelect: (value) {
        viewModel.changeAgeGroup(
          AgeGroup.values.firstWhere((e) => e.text == value),
        );
      },
    );

    ///
    /// 場所
    ///
    final addressWidget = RoomStateTransitionTile(
      title: LocaleKeys.data_room_address_title.tr(),
      value: state.addressWithId?.text,
      onTap: () => viewModel.navigateToEntryAddress(),
    );

    ///
    /// タグ
    ///
    final tagsWidget = RoomStateTransitionTile(
      title: LocaleKeys.data_room_tags_title.tr(),
      value: state.tags?.map((e) => e.name).join("、"),
      onTap: () => viewModel.navigateToTagsSelection(),
    );

    ///
    /// 詳細説明
    final explanationWidget = RoomStateInputField(
      theme: theme,
      required: false,
      title: LocaleKeys.data_room_description_title.tr(),
      content: BaseTextField(
        controller: explanationController,
        maxLength: 500,
        minLines: 6,
        maxLines: 100,
        isDisplaySuffixIcon: false,
        onChanged: (value) => viewModel.changeExplanation(value),
        hintText: LocaleKeys.data_room_description_hint.tr(),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 15,
        ),
      ),
    );

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
                titleWidget,
                const Gap(20),
                membersNumWidget,
                const Gap(15),
                ageGroupWidget,
                const Gap(15),
                addressWidget,
                const Gap(15),
                tagsWidget,
                const Gap(30),
                explanationWidget,
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
