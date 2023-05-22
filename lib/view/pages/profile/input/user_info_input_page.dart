import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker_plus/flutter_datetime_picker_plus.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fortune_client/view/pages/profile/input/components/profile_input_app_bar.dart';
import 'package:fortune_client/view/pages/profile/input/components/profile_input_list_tile.dart';
import 'package:fortune_client/view/pages/profile/input/components/profile_input_next_button.dart';
import 'package:fortune_client/view/pages/profile/input/profile_input_view_model.dart';
import 'package:fortune_client/view/routes/route_navigator.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class UserInfoInputPage extends HookConsumerWidget {
  const UserInfoInputPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);
    final state = ref.watch(profileInputViewModelProvider);
    final viewModel = ref.watch(profileInputViewModelProvider.notifier);

    final nameController = useTextEditingController();
    String? name = nameController.text;
    useListenable(nameController);

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: theme.appColors.onBackground,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ProfileInputAppBar("はじめる"),
            const Gap(50),
            ProfileInputListTile(
              controller: nameController,
              labelText: "名前",
              hintText: "名前を入力してください",
            ),
            const Gap(20),
            ProfileInputListTile(
              controller: TextEditingController(text: state.birthdayToString()),
              labelText: "生年月日",
              onTap: () async {
                final date = await DatePicker.showDatePicker(
                  context,
                  showTitleActions: true,
                  minTime: DateTime(1900, 1, 1),
                  maxTime: DateTime(2049, 12, 31),
                  currentTime: DateTime.now(),
                  locale: LocaleType.jp,
                );
                if (date != null) viewModel.changeBirthday(date);
              },
            ),
            const Spacer(),
            ProfileInputNextButton(
              clickable: viewModel.isPossibleToCreateUser(name),
              onPressed: () async {
                final isCreated = await viewModel.createUser(name);
                if (isCreated) navigator.navigateTo(RoutePath.profileInput);
              },
            ),
            const Gap(100),
          ],
        ),
      ),
    );
  }
}
