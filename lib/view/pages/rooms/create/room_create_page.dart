import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fortune_client/view/pages/rooms/create/room_create_view_model.dart';

// ignore: must_be_immutable
class RoomCreatePage extends ConsumerWidget {
  RoomCreatePage({super.key});

  double textFieldEdgeInsetsHor = 5;
  double textFieldEdgeInsetsVer = 15;
  double textFieldFontSize = 15;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(roomCreateViewModelProvider);
    final viewModel = ref.watch(roomCreateViewModelProvider.notifier);

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
                  "ルーム作成",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                /// 名前
                const SizedBox(height: 30),
                _roomNameInputField(),

                /// 電話またはメールアドレス
                const SizedBox(height: 30),
                _menberNumInputField(),

                /// 生年月日
                const SizedBox(height: 30),
                _ageGroupInputField(),

                /// 開催場所
                const SizedBox(height: 30),
                _addressInputField(),

                /// ルーム説明
                const SizedBox(height: 30),
                _explanationInputField(),

                /// タグ
                const SizedBox(height: 30),
                _tagInputField(),
              ],
            ),

            /// プロフィールの入力画面へ遷移
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
                onPressed: viewModel.create, // 作成
                child: const Text("作成"),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _tagInputField() {
    return TextField(
      style: TextStyle(fontSize: textFieldFontSize),
      decoration: InputDecoration(
        hintText: 'タグ',
        contentPadding: EdgeInsets.symmetric(
          horizontal: textFieldEdgeInsetsHor,
          vertical: textFieldEdgeInsetsVer,
        ),
      ),
    );
  }

  Widget _explanationInputField() {
    return TextField(
      style: TextStyle(fontSize: textFieldFontSize),
      decoration: InputDecoration(
        hintText: 'ルーム説明',
        contentPadding: EdgeInsets.symmetric(
          horizontal: textFieldEdgeInsetsHor,
          vertical: textFieldEdgeInsetsVer,
        ),
      ),
    );
  }

  Widget _addressInputField() {
    return TextField(
      style: TextStyle(fontSize: textFieldFontSize),
      decoration: InputDecoration(
        hintText: '開催場所',
        contentPadding: EdgeInsets.symmetric(
          horizontal: textFieldEdgeInsetsHor,
          vertical: textFieldEdgeInsetsVer,
        ),
      ),
    );
  }

  Widget _ageGroupInputField() {
    return TextField(
      style: TextStyle(fontSize: textFieldFontSize),
      decoration: InputDecoration(
        hintText: '募集年齢',
        contentPadding: EdgeInsets.symmetric(
          horizontal: textFieldEdgeInsetsHor,
          vertical: textFieldEdgeInsetsVer,
        ),
      ),
    );
  }

  Widget _menberNumInputField() {
    return TextField(
      style: TextStyle(fontSize: textFieldFontSize),
      decoration: InputDecoration(
        hintText: '募集人数',
        contentPadding: EdgeInsets.symmetric(
          horizontal: textFieldEdgeInsetsHor,
          vertical: textFieldEdgeInsetsVer,
        ),
      ),
    );
  }

  Widget _roomNameInputField() {
    return TextField(
      style: TextStyle(fontSize: textFieldFontSize),
      decoration: InputDecoration(
        hintText: '名前',
        contentPadding: EdgeInsets.symmetric(
          horizontal: textFieldEdgeInsetsHor,
          vertical: textFieldEdgeInsetsVer,
        ),
      ),
    );
  }
}
