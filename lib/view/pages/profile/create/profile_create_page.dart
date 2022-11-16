import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fortune_client/view/pages/profile/create/profile_create_view_model.dart';

// ignore: must_be_immutable
class ProfileCreatePage extends ConsumerWidget {
  ProfileCreatePage({super.key});

  double textFieldEdgeInsetsHor = 5;
  double textFieldEdgeInsetsVer = 15;
  double textFieldFontSize = 15;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(profileCreateViewModelProvider);
    final viewModel = ref.watch(profileCreateViewModelProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        leadingWidth: 150,
        leading: TextButton(
          onPressed: Navigator.of(context).pop,
          child: const Text(
            "キャンセル",
            style: TextStyle(color: Colors.black87, fontSize: 16),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "プロフィール作成",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                /// 名前
                const SizedBox(height: 30),
                _profileStringValueInputField(
                  hintText: "名前",
                  onChanged: viewModel.onChangeName,
                ),

                /// 性別
                const SizedBox(height: 30),
                _profileStringValueInputField(
                  hintText: "性別",
                  onChanged: viewModel.onChangeName,
                ),

                /// 居住地
                const SizedBox(height: 30),
                _profileStringValueInputField(
                  hintText: "居住地",
                  onChanged: viewModel.onChangeName,
                ),
              ],
            ),

            /// アプリのホーム画面へ遷移
            Positioned(
              right: 0,
              bottom: 30,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                onPressed: viewModel.onNext,
                child: const Text("次へ"),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _profileStringValueInputField({
    required String hintText,
    required Function(String) onChanged,
  }) {
    return TextField(
      style: TextStyle(fontSize: textFieldFontSize),
      decoration: InputDecoration(
        hintText: hintText,
        contentPadding: EdgeInsets.symmetric(
          horizontal: textFieldEdgeInsetsHor,
          vertical: textFieldEdgeInsetsVer,
        ),
      ),
      onChanged: onChanged,
    );
  }
}
