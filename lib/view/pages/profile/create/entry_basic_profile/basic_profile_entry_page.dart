import 'package:flutter/material.dart';
import 'package:fortune_client/util/converter/datetime_converter.dart';
import 'package:fortune_client/view/pages/profile/create/components/date_picker.dart';
import 'package:fortune_client/view/pages/profile/create/entry_basic_profile/basic_profile_entry_view_model.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/app_bar/basic_app_bar.dart';
import 'package:fortune_client/view/widgets/form_field/base_text_field.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class BasicProfileEntryPage extends StatelessWidget {
  const BasicProfileEntryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BaseTextField(controller: TextEditingController()),
    );
  }
}

// class BasicProfileEntryPage extends HookConsumerWidget {
//   const BasicProfileEntryPage({super.key});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final theme = ref.watch(appThemeProvider);
//     final state = ref.watch(basicProfileEntryViewModelProvider);
//     final viewModel = ref.watch(basicProfileEntryViewModelProvider.notifier);

//     /// 誕生日フォーマッター
//     String? birthdayStr;
//     const birthdayFormater = DateTimeConverter.convertDateTimeYYYYMMDD;
//     if (state.birthday != null) birthdayStr = birthdayFormater(state.birthday!);

//     return Scaffold(
//       backgroundColor: theme.appColors.onBackground,
//       appBar: BasicAppBar(
//         title: "はじめる",
//         action: [_nextButton(theme, state.isEntered(), viewModel.onCreate)],
//       ),
//       body: Container(
//         padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
//         child: Column(
//           children: [
//             TextFormField(
//               maxLength: 20,
//               decoration: const InputDecoration(labelText: '名前（必須）'),
//               onChanged: viewModel.changeName,
//             ),
//             const Gap(10),
//             BaseTextField(controller: controller),
//             const Gap(10),
//             TextFormField(
//               readOnly: true,
//               controller: TextEditingController(text: birthdayStr),
//               decoration: const InputDecoration(labelText: '誕生日（必須）'),
//               onTap: () async =>
//                   viewModel.changeBirthday(await datePicker(context)),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _nextButton(AppTheme theme, bool clickable, Function() onPressed) {
//     final onBg = theme.appColors.primary;
//     final offBg = theme.appColors.disable;
//     final onTextColor = theme.appColors.onPrimary;
//     final offTextColor = theme.appColors.subText2;

//     return ElevatedButton(
//       style: ElevatedButton.styleFrom(
//         elevation: 0,
//         backgroundColor: clickable ? onBg : offBg,
//         padding: const EdgeInsets.symmetric(horizontal: 20),
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(50),
//         ),
//       ),
//       onPressed: () {
//         if (clickable) onPressed();
//       },
//       child: Text(
//         "次へ",
//         style: TextStyle(
//           fontSize: 16,
//           color: clickable ? onTextColor : offTextColor,
//         ),
//       ),
//     );
//   }
// }
