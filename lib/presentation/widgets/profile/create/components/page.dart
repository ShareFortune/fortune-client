import 'package:flutter/material.dart';

import '../../../account/account/containers/page.dart';

class ProfileCreationPageComponent extends StatelessWidget {
  const ProfileCreationPageComponent({super.key});

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
              children: const [
                Text(
                  "プロフィール作成",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                /// アイコン
                SizedBox(height: 30),
                TextField(
                  style: TextStyle(fontSize: textFieldFontSize),
                  decoration: InputDecoration(
                    hintText: 'アイコン',
                    contentPadding: edgeInsets,
                  ),
                ),

                /// 性別
                SizedBox(height: 30),
                TextField(
                  style: TextStyle(fontSize: textFieldFontSize),
                  decoration: InputDecoration(
                    hintText: '電話またはメールアドレス',
                    contentPadding: edgeInsets,
                  ),
                ),
              ],
            ),

            /// 次へボタン
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
                child: const Text("次へ"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AccountPegeContainer(),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
