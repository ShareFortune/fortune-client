import 'package:flutter/material.dart';

class RoomCreationPageComponent extends StatelessWidget {
  const RoomCreationPageComponent({super.key, this.onPressedNextButton});

  /// プロフィールの入力画面へ遷移する関数
  final void Function()? onPressedNextButton;

  @override
  Widget build(BuildContext context) {
    const edgeInsets = EdgeInsets.symmetric(horizontal: 5, vertical: 15);
    const double textFieldFontSize = 15;

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
                _roomNameInputField(textFieldFontSize, edgeInsets),

                /// 電話またはメールアドレス
                const SizedBox(height: 30),
                _menberNumInputField(textFieldFontSize, edgeInsets),

                /// 生年月日
                const SizedBox(height: 30),
                _ageGroupInputField(textFieldFontSize, edgeInsets),

                /// 開催場所
                const SizedBox(height: 30),
                _addressInputField(textFieldFontSize, edgeInsets),

                /// ルーム説明
                const SizedBox(height: 30),
                _explanationInputField(textFieldFontSize, edgeInsets),

                /// タグ
                const SizedBox(height: 30),
                _tagInputField(textFieldFontSize, edgeInsets),
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
                onPressed: onPressedNextButton,
                child: const Text("作成"),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _tagInputField(double fontSize, EdgeInsetsGeometry padding) {
    return TextField(
      style: TextStyle(fontSize: fontSize),
      decoration: InputDecoration(
        hintText: 'タグ',
        contentPadding: padding,
      ),
    );
  }

  Widget _explanationInputField(double fontSize, EdgeInsetsGeometry padding) {
    return TextField(
      style: TextStyle(fontSize: fontSize),
      decoration: InputDecoration(
        hintText: 'ルーム説明',
        contentPadding: padding,
      ),
    );
  }

  Widget _addressInputField(double fontSize, EdgeInsetsGeometry padding) {
    return TextField(
      style: TextStyle(fontSize: fontSize),
      decoration: InputDecoration(
        hintText: '開催場所',
        contentPadding: padding,
      ),
    );
  }

  Widget _ageGroupInputField(double fontSize, EdgeInsetsGeometry padding) {
    return TextField(
      style: TextStyle(fontSize: fontSize),
      decoration: InputDecoration(
        hintText: '募集年齢',
        contentPadding: padding,
      ),
    );
  }

  Widget _menberNumInputField(double fontSize, EdgeInsetsGeometry padding) {
    return TextField(
      style: TextStyle(fontSize: fontSize),
      decoration: InputDecoration(
        hintText: '募集人数',
        contentPadding: padding,
      ),
    );
  }

  Widget _roomNameInputField(double fontSize, EdgeInsetsGeometry padding) {
    return TextField(
      style: TextStyle(fontSize: fontSize),
      decoration: InputDecoration(
        hintText: '名前',
        contentPadding: padding,
      ),
    );
  }
}
