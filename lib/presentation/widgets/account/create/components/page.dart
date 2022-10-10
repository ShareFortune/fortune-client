import 'package:flutter/material.dart';

import 'parts/name_input_list_tile.dart';

class AccountCreationPageComponent extends StatelessWidget {
  const AccountCreationPageComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: const Text(
          "プロフィール編集",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: Navigator.of(context).pop,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20, left: 30, right: 0),
        child: ListView(
          children: const [
            NameInputListTile(
              tileKey: "名前",
              tileValue: "太郎",
            ),
          ],
        ),
      ),
    );
  }
}
