import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:fortune_client/data/model/core/enum/cigarette_frequency.dart';
import 'package:fortune_client/data/model/core/enum/drink_frequency.dart';
import 'package:fortune_client/data/model/core/enum/gender.dart';
import 'package:fortune_client/l10n/locale_keys.g.dart';
import 'package:fortune_client/view/pages/account/create/components/entry_profile_expanded_tile_picker.dart';
import 'package:fortune_client/view/pages/account/create/components/next_button.dart';
import 'package:fortune_client/view/pages/account/create/components/profile_creation_text_field.dart';
import 'package:fortune_client/view/pages/account/create/entry_detailed_profile/detailed_profile_entry_view_model.dart';
import 'package:fortune_client/view/theme/app_text_theme.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/app_bar/basic_app_bar.dart';
import 'package:fortune_client/view/widgets/form_field/base_transition_tile.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DetailedProfileEntryPage extends HookConsumerWidget {
  DetailedProfileEntryPage({super.key});

  final nameController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);
    final state = ref.watch(detailedProfileEntryViewModelProvider);
    final viewModel = ref.watch(detailedProfileEntryViewModelProvider.notifier);

    /// ニックネーム
    final nameInputField = ProfileCreationTextField(
      theme: theme,
      controller: nameController,
      labelText: LocaleKeys.detailed_profile_entry_page_hint_nickname.tr(),
      clearCallBack: () => viewModel.changeName(""),
      onChanged: (value) => viewModel.changeName(value),
      onEditingComplete: () => FocusScope.of(context).unfocus(),
    );

    /// 性別ピッカー
    final genderPicker = EntryProfileExpandedTilePicker(
      title: LocaleKeys.detailed_profile_entry_page_hint_gender.tr(),
      value: state.gender?.text,
      items: Gender.values.map((e) => e.text).toList(),
      onSelect: (value) {
        viewModel.changeGender(
          Gender.values.firstWhere((e) => e.text == value),
        );
      },
    );

    /// 身長ピッカー
    final staturePicker = EntryProfileExpandedTilePicker(
      title: LocaleKeys.detailed_profile_entry_page_hint_stature.tr(),
      value: state.stature != null ? "${state.stature}cm" : null,
      items: List.generate(100, (index) => "${index + 100}").toList(),
      onSelect: (value) {
        viewModel.changeStature(int.parse(value));
      },
    );

    /// 住所ピッカー
    final addressPicker = BaseTransitionTile(
      title: LocaleKeys.detailed_profile_entry_page_hint_address.tr(),
      value: state.addressWithId?.text,
      textWhenUnsetStyle: theme.textTheme.h30.paint(theme.appColors.subText3),
      onTap: () {
        viewModel.navigateToEntryAddress();
      },
    );

    /// お酒ピッカー
    final drinkFrequencyPicker = EntryProfileExpandedTilePicker(
      title: LocaleKeys.detailed_profile_entry_page_hint_drinkFrequency.tr(),
      value: state.drinkFrequency?.text,
      items: DrinkFrequency.values.map((e) => e.text).toList(),
      onSelect: (value) {
        viewModel.changeDrinkFrequency(
          DrinkFrequency.values.firstWhere((e) => e.text == value),
        );
      },
    );

    /// タバコピッカー
    final cigaretteFrequencyPicker = EntryProfileExpandedTilePicker(
      title:
          LocaleKeys.detailed_profile_entry_page_hint_cigaretteFrequency.tr(),
      value: state.cigaretteFrequency?.text,
      items: CigaretteFrequency.values.map((e) => e.text).toList(),
      onSelect: (value) {
        viewModel.changeCigaretteFrequency(
          CigaretteFrequency.values.firstWhere(
            (e) => e.text == value,
          ),
        );
      },
    );

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: theme.appColors.onBackground,
        appBar: BasicAppBar(
          title: LocaleKeys.detailed_profile_entry_page_title.tr(),
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    /// 名前
                    nameInputField,
                    const Gap(10),

                    /// 性別
                    genderPicker,
                    const Gap(10),

                    /// 居住地
                    addressPicker,
                    const Gap(10),

                    /// 身長
                    staturePicker,
                    const Gap(10),

                    /// お酒
                    drinkFrequencyPicker,
                    const Gap(10),

                    /// タバコ
                    cigaretteFrequencyPicker,
                    const Gap(10),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      LocaleKeys.detailed_profile_entry_page_guide.tr(),
                      style: theme.textTheme.h20.paint(
                        theme.appColors.subText3,
                      ),
                    ),
                    const Gap(30),
                    nextButton(
                      viewModel.isPossibleToNext(),
                      () => viewModel.navigateToEntryProfileicon(),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
