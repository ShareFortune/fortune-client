import 'package:flutter/material.dart';
import 'package:fortune_client/data/model/enum/cigarette_frequency.dart';
import 'package:fortune_client/data/model/enum/drink_frequency.dart';
import 'package:fortune_client/view/pages/profile/update/profile_update_view_model.dart';
import 'package:fortune_client/view/theme/app_text_theme.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/app_bar/back_app_bar.dart';
import 'package:fortune_client/view/widgets/form_field/base_transition_tile.dart';
import 'package:fortune_client/view/widgets/picker/expanded_tile_picker.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// プロフィールの基本情報を更新するためのWidget
/// 自己紹介、タグに関してはマイページから直接更新
class ProfileUpdatePage extends HookConsumerWidget {
  const ProfileUpdatePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);
    final state = ref.watch(profileUpdateViewModelProvider);
    final viewModel = ref.watch(profileUpdateViewModelProvider.notifier);

    /// 身長ピッカー
    final staturePicker = ExpandedTilePicker(
      theme: theme,
      title: "身長",
      value: state.stature != null ? "${state.stature}cm" : null,
      items: List.generate(100, (index) => "${index + 100}").toList(),
      onSelect: (value) => viewModel.changeStature(int.parse(value)),
    );

    // /// 住所ピッカー
    final addressPicker = BaseTransitionTile(
      title: "居住地",
      value: state.addressWithId?.text,
      onTap: () => viewModel.navigateToEntryAddress(),
    );

    /// お酒ピッカー
    final drinkFrequencyPicker = ExpandedTilePicker(
      theme: theme,
      title: "お酒",
      value: state.drinkFrequency?.text,
      items: DrinkFrequency.values.map((e) => e.text).toList(),
      onSelect: (value) {
        viewModel.changeDrinkFrequency(
          DrinkFrequency.values.firstWhere((e) => e.text == value),
        );
      },
    );

    /// タバコピッカー
    final cigaretteFrequencyPicker = ExpandedTilePicker(
      theme: theme,
      title: "タバコ",
      value: state.cigaretteFrequency?.text,
      items: CigaretteFrequency.values.map((e) => e.text).toList(),
      onSelect: (value) {
        viewModel.changeCigaretteFrequency(
          CigaretteFrequency.values.firstWhere((e) => e.text == value),
        );
      },
    );
    return Scaffold(
      backgroundColor: theme.appColors.onBackground,
      appBar: BackAppBar(
        title: "プロフィールの更新",
        action: [
          TextButton(
            onPressed: () => viewModel.update(),
            child: Text("保存", style: theme.textTheme.h40.bold()),
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
                  /// 身長
                  staturePicker,
                  const Gap(10),

                  /// 居住地
                  addressPicker,
                  const Gap(10),

                  /// お酒
                  drinkFrequencyPicker,
                  const Gap(10),

                  /// タバコ
                  cigaretteFrequencyPicker,
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
