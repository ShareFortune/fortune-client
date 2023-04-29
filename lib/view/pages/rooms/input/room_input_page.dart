import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fortune_client/data/model/enum/age_group.dart';
import 'package:fortune_client/l10n/locale_keys.g.dart';
import 'package:fortune_client/view/pages/rooms/action/components/room_state_input_field.dart';
import 'package:fortune_client/view/pages/rooms/input/room_input_view_model.dart';
import 'package:fortune_client/view/pages/tags/search/search_tags_page.dart';
import 'package:fortune_client/view/routes/route_navigator.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/app_bar/back_app_bar.dart';
import 'package:fortune_client/view/widgets/container/view_state_container.dart';
import 'package:fortune_client/view/widgets/dialog/toast.dart';
import 'package:fortune_client/view/widgets/picker/address_picker.dart';
import 'package:fortune_client/view/widgets/picker/enum_picker.dart';
import 'package:fortune_client/view/widgets/picker/number_picker.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RoomInputPage extends StatefulHookConsumerWidget {
  const RoomInputPage({Key? key}) : super(key: key);

  @override
  ConsumerState<RoomInputPage> createState() => _RoomInputPageState();
}

class _RoomInputPageState extends ConsumerState<RoomInputPage> {
  @override
  Widget build(BuildContext context) {
    final theme = ref.watch(appThemeProvider);
    final state = ref.watch(roomInputViewModelProvider);
    final viewModel = ref.watch(roomInputViewModelProvider.notifier);

    final titleController = useTextEditingController();
    final explanationController = useTextEditingController();

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
                onPressed: !viewModel.isPossibleToCreate()
                    ? null
                    : () async {
                        final roomId = await viewModel.create();

                        /// 成功
                        if (roomId != null) {
                          return navigator.navigateTo(RoutePath.roomDetail);
                        }

                        /// エラー
                        if (!mounted) return;
                        return showErrorToast(
                          context,
                          theme,
                          LocaleKeys.data_room_action_create_failure.tr(),
                        );
                      },
                child: Text(LocaleKeys.create_room_page_create.tr()),
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.only(left: 20, right: 10),
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
                ViewStateContainer(
                  isEdit: true,
                  title: LocaleKeys.data_room_membersNum_title.tr(),
                  format: LocaleKeys.data_room_membersNum_data_all.tr(),
                  args: [state.membersNum.toString()],
                  hasValue: state.membersNum != null,
                  onTapped: () async {
                    await NumberPicker.participants().show(
                      context: context,
                      onChanged: viewModel.changeMembersNum,
                    );
                  },
                ),

                const Gap(15),

                /// 対象年齢
                ViewStateContainer(
                  isEdit: true,
                  title: LocaleKeys.data_room_age_title.tr(),
                  format: state.ageGroup?.text,
                  hasValue: state.ageGroup != null,
                  onTapped: () async {
                    await EnumPicker<AgeGroup>.ageGroup().show(
                      context: context,
                      onConvert: AgeGroupEx.fromText,
                      onChanged: viewModel.changeAgeGroup,
                    );
                  },
                ),

                const Gap(15),

                /// 場所
                ViewStateContainer(
                  isEdit: true,
                  title: LocaleKeys.data_room_address_title.tr(),
                  format: state.address?.prefecture,
                  hasValue: state.address != null,
                  onTapped: () async {
                    await AddressPicker().show(
                      context: context,
                      theme: theme,
                      address: state.address,
                      onChanged: viewModel.changeAddress,
                    );
                  },
                ),

                const Gap(15),

                /// タグ
                ViewStateContainer(
                  isEdit: true,
                  title: LocaleKeys.data_room_tags_title.tr(),
                  format: "${state.tags?.length ?? 0}個のタグ",
                  hasValue: state.tags != null,
                  onTapped: () async {
                    await navigator.navigateTo(
                      RoutePath.searchTag,
                      arguments: SearchTagsPageAuguments(
                        tags: state.tags ?? [],
                        onChanged: viewModel.changeTags,
                      ),
                    );
                  },
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
}
