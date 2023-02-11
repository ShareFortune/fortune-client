import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:fortune_client/data/model/enum/cigarette_frequency.dart';
import 'package:fortune_client/data/model/enum/drink_frequency.dart';
import 'package:fortune_client/l10n/locale_keys.g.dart';
import 'package:fortune_client/view/pages/my_page/update/profile_update_view_model.dart';
import 'package:fortune_client/view/theme/app_text_theme.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/app_bar/back_app_bar.dart';
import 'package:fortune_client/view/widgets/form_field/base_transition_tile.dart';
import 'package:fortune_client/view/widgets/picker/expanded_tile_picker.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// プロフィールの基本情報を更新するためのWidget
/// 自己紹介、タグに関してはマイページから直接更新
/// 変更対象のプロフィールデータはローカル保存されたものを利用
class ProfileUpdatePage extends HookConsumerWidget {
  const ProfileUpdatePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);
    final state = ref.watch(profileUpdateViewModelProvider);
    final viewModel = ref.watch(profileUpdateViewModelProvider.notifier);

    return Scaffold(
      backgroundColor: theme.appColors.onBackground,
      appBar: BackAppBar(
        title: LocaleKeys.profile_update_page_title.tr(),
        action: [
          TextButton(
            onPressed: () => viewModel.update(),
            child: Text(
              LocaleKeys.profile_update_page_save.tr(),
              style: theme.textTheme.h40.bold(),
            ),
          )
        ],
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  /// 身長ピッカー
                  ExpandedTilePicker(
                    theme: theme,
                    title: LocaleKeys.data_profile_stature_title.tr(),
                    value: state.stature != null ? "${state.stature}cm" : null,
                    items: List.generate(100, (index) => "${index + 100}")
                        .toList(),
                    onSelect: (value) =>
                        viewModel.changeStature(int.parse(value)),
                  ),

                  const Gap(10),

                  /// 住所ピッカー
                  BaseTransitionTile(
                    title: LocaleKeys.data_profile_address_title.tr(),
                    value: state.addressWithId?.text,
                    onTap: () => viewModel.navigateToEntryAddress(),
                  ),

                  const Gap(10),

                  /// お酒ピッカー
                  ExpandedTilePicker(
                    theme: theme,
                    title: LocaleKeys.data_profile_drinkFrequency_title.tr(),
                    value: state.drinkFrequency?.text,
                    items: DrinkFrequency.values.map((e) => e.text).toList(),
                    onSelect: (value) {
                      viewModel.changeDrinkFrequency(
                        DrinkFrequency.values
                            .firstWhere((e) => e.text == value),
                      );
                    },
                  ),

                  const Gap(10),

                  /// タバコピッカー
                  ExpandedTilePicker(
                    theme: theme,
                    title:
                        LocaleKeys.data_profile_cigaretteFrequency_title.tr(),
                    value: state.cigaretteFrequency?.text,
                    items:
                        CigaretteFrequency.values.map((e) => e.text).toList(),
                    onSelect: (value) {
                      viewModel.changeCigaretteFrequency(
                        CigaretteFrequency.values
                            .firstWhere((e) => e.text == value),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
