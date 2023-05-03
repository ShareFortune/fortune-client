import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fortune_client/data/model/enum/gender.dart';
import 'package:fortune_client/view/pages/profile/input/components/profile_input_app_bar.dart';
import 'package:fortune_client/view/pages/profile/input/components/profile_input_list_tile.dart';
import 'package:fortune_client/view/pages/profile/input/components/profile_input_next_button.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/picker/address_picker.dart';
import 'package:fortune_client/view/widgets/picker/enum_picker.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ProfileInputPage extends HookConsumerWidget {
  const ProfileInputPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);

    final nicknameController = useTextEditingController();
    final genderController = useTextEditingController();
    final addressController = useTextEditingController();
    useListenable(nicknameController);
    useListenable(genderController);

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: theme.appColors.onBackground,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ProfileInputAppBar("プロフィール"),
            const Gap(50),

            /// ニックネーム入力欄
            ProfileInputListTile(
              controller: nicknameController,
              labelText: "ニックネーム",
              hintText: "ニックネームを入力してください",
            ),
            const Gap(20),

            /// 性別入力欄
            ProfileInputListTile(
              controller: genderController,
              labelText: "性別",
              onTap: () {
                EnumPicker<Gender>.gender().show(
                  context: context,
                  onConvert: GenderEx.fromText,
                  onChanged: (gender) {},
                );
              },
            ),
            const Gap(20),

            /// 居住地入力欄
            ProfileInputListTile(
              controller: addressController,
              labelText: "居住地",
              onTap: () async {
                await AddressPicker().show(
                  context: context,
                  theme: theme,
                  onChanged: (address) {},
                );
              },
            ),

            const Spacer(),
            ProfileInputNextButton(() {}),
            const Gap(100),
          ],
        ),
      ),
    );
  }
}
