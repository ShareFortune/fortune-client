import 'package:flutter/material.dart';

/// 検索バー
/// 検索項目: タグ・人数・場所
class SearchBarComponent extends StatelessWidget
    implements PreferredSizeWidget {
  const SearchBarComponent({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  PreferredSizeWidget build(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(50.0),
      child: Row(
        children: [
          /// タグ
          const SizedBox(width: 15),
          tagButton(
            title: "タグ",
            icon: Icons.arrow_drop_down,
            onPressed: () {},
          ),

          /// 場所
          const SizedBox(width: 10),
          tagButton(
            title: "場所",
            icon: Icons.arrow_drop_down,
            onPressed: () {},
          ),

          /// 募集人数
          const SizedBox(width: 10),
          tagButton(
            title: "募集人数",
            icon: Icons.arrow_drop_down,
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  tagButton({
    required String title,
    required IconData icon,
    required void Function()? onPressed,
  }) {
    return OutlinedButton.icon(
      style: OutlinedButton.styleFrom(
        elevation: 0,
        backgroundColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      onPressed: onPressed,
      label: Icon(
        icon,
        color: Colors.black,
      ),
      icon: Text(
        title,
        style: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
