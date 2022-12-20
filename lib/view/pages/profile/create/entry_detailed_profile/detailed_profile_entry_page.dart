import 'package:flutter/material.dart';
import 'package:fortune_client/view/hooks/use_media_query.dart';
import 'package:fortune_client/view/pages/common/basic_app_bar/basic_app_bar.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DetailedProfileEntryPage extends HookConsumerWidget {
  const DetailedProfileEntryPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mediaQuery = useMediaQuery();

    return Scaffold(
      appBar: BasicAppbar(
        widget: Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "プロフィール作成",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.only(
          top: 20,
          left: 30,
          right: 30,
          bottom: 50,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                _inputField("身長", ""),
                const Gap(30),
                _inputField("職業", ""),
                const Gap(30),
                _inputField("居住地", ""),
                const Gap(30),
                _inputField("出身地", ""),
                const Gap(30),
                _inputField("お酒", ""),
                const Gap(30),
                _inputField("タバコ", ""),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "なんか入力した方がいいですよとか入力必須ではないとかの注釈を入れる。居住地とかのデータがどのように利用されるかはログイン画面の利用規約に表示するが、他のユーザーにどのように表示されるかについてはここで注釈入れた方がいいかも。",
                  style: TextStyle(color: Color(0xFF6C6C6C)),
                ),
                const Gap(30),
                _nextButton(true, () => null),
              ],
            ),
          ],
        ),
      ),
    );
  }

  _inputField(
    String title,
    String value,
  ) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 1,
            color: Color(0xFFF3F3F3),
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: const TextStyle(fontSize: 16)),
          Row(
            children: [
              value.isNotEmpty
                  ? Text(
                      value,
                      style: const TextStyle(
                        fontSize: 16,
                        color: Color(0xFFC782E4),
                      ),
                    )
                  : const Text(
                      "未設定",
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF969696),
                      ),
                    ),
              const Gap(10),
              const Icon(
                size: 16,
                Icons.arrow_forward_ios,
                color: Color(0xFFD9D9D9),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _nextButton(bool clickable, Function() onPressed) {
    final bgColor =
        clickable ? const Color(0xFFC782E4) : const Color(0xFFF5F5F5);
    final textColor = clickable ? Colors.white : Colors.black;

    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: bgColor,
        padding: const EdgeInsets.symmetric(vertical: 20),
        fixedSize: const Size.fromWidth(double.maxFinite),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        "次へ",
        style: TextStyle(
          fontSize: 16,
          color: textColor,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
