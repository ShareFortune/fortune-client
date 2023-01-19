import 'package:flutter/material.dart';
import 'package:fortune_client/data/model/enum/gender.dart';
import 'package:fortune_client/view/widgets/picker/bottom_picker.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/app_bar/basic_app_bar.dart';
import 'package:fortune_client/view/pages/profile/create/entry_detailed_profile/detailed_profile_entry_view_model.dart';
import 'package:fortune_client/view/pages/profile/create/components/next_button.dart';
import 'package:fortune_client/view/widgets/form_field/picker_form_field.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DetailedProfileEntryPage extends HookConsumerWidget {
  const DetailedProfileEntryPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);
    final state = ref.watch(detailedProfileEntryViewModelProvider);
    final viewModel = ref.watch(detailedProfileEntryViewModelProvider.notifier);

    return Scaffold(
      backgroundColor: theme.appColors.onBackground,
      appBar: const BasicAppBar(title: "プロフィール作成"),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  /// 名前
                  _nameInputField(theme, state.name),
                  const Gap(10),

                  /// 性別
                  PickerFormField(
                    title: "性別",
                    value: state.gender?.text,
                    ontap: () => _genderPicker(context, viewModel.changeGender),
                  ),
                  const Gap(10),

                  /// 身長
                  PickerFormField(
                    title: "身長",
                    value: "",
                    ontap: () {},
                  ),
                  const Gap(10),

                  /// 職業
                  PickerFormField(
                    title: "職業",
                    value: "",
                    ontap: () {},
                  ),
                  const Gap(10),

                  /// 居住地
                  PickerFormField(
                    title: "居住地",
                    value: "",
                    ontap: () {},
                  ),
                  const Gap(10),

                  /// お酒
                  PickerFormField(
                    title: "お酒",
                    value: "",
                    ontap: () {},
                  ),
                  const Gap(10),

                  /// タバコ
                  PickerFormField(
                    title: "タバコ",
                    value: "",
                    ontap: () {},
                  ),
                  const Gap(10),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "なんか入力した方がいいですよとか入力必須ではないとかの注釈を入れる。居住地とかのデータがどのように利用されるかはログイン画面の利用規約に表示するが、他のユーザーにどのように表示されるかについてはここで注釈入れた方がいいかも。",
                    style: TextStyle(color: Color(0xFF6C6C6C)),
                  ),
                  const Gap(30),
                  nextButton(
                      true, () => viewModel.navigateToEntryProfileicon()),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  _nameInputField(AppTheme theme, String value) {
    return TextFormField(
      controller: TextEditingController(text: value),
      decoration: InputDecoration(
        labelText: '名前',
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(width: 1, color: theme.appColors.border1),
        ),
      ),
    );
  }

  _genderPicker(BuildContext context, Function(Gender) onChange) {
    final sheet = bottomPicker(
      items: Gender.values,
      itemsText: Gender.values.map((e) => e.text).toList(),
      onChange: onChange,
    );
    sheet.show(context);
  }
}
