import 'package:flutter/material.dart';

class AccountScreenComponent extends StatelessWidget {
  const AccountScreenComponent({super.key});

  @override
  Widget build(BuildContext context) {
    const edgeInsets = EdgeInsets.only(top: 80);
    const edgeInsets2 = EdgeInsets.only(top: 30);

    return Padding(
      padding: edgeInsets,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // const MyIconButton(iconSize: 70),
          Padding(
            padding: edgeInsets2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "name",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                SizedBox(width: 20),
                Text(
                  "21歳・東京",
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
          SizedBox(
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                /// ポイント
                // MyPointWidget(),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: VerticalDivider(
                    width: 20,
                    thickness: 1,
                    indent: 10,
                    endIndent: 10,
                    color: Color.fromARGB(255, 226, 226, 226),
                  ),
                ),

                /// プラン
                // MyPlanWidget(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
