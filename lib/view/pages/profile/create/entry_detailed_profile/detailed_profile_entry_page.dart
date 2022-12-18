import 'package:flutter/material.dart';
import 'package:fortune_client/view/hooks/use_media_query.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:page_indicator/page_indicator.dart';

class DetailedProfileEntryPage extends HookConsumerWidget {
  const DetailedProfileEntryPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mediaQuery = useMediaQuery();

    return Scaffold(
      body: Container(
        height: mediaQuery.size.height,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _title(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  children: [
                    Gap(50),
                    _inputField("身長"),
                    Gap(30),
                    _inputField("職業"),
                    Gap(30),
                    _inputField("居住地"),
                    Gap(30),
                    _inputField("出身地"),
                    Gap(30),
                    _inputField("お酒"),
                    Gap(30),
                    _inputField("タバコ"),
                  ],
                ),
              ),
              indicator(),
            ],
          ),
        ),
      ),
    );
  }

  _title() {
    return const Text(
      "プロフィールを作ろう！",
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  _inputField(String title) {
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
            children: const [
              Text(
                "未設定",
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFF969696),
                ),
              ),
              Gap(10),
              Icon(
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

  indicator() {
    return SizedBox(
      height: 120.0,
      child: PageIndicatorContainer(
        key: key,
        indicatorColor: const Color(0xFFD9D9D9), // icon1
        indicatorSelectorColor: const Color(0xFFC782E4),
        align: IndicatorAlign.bottom,
        length: 4,
        shape: IndicatorShape.circle(size: 8),
        child: PageView(
          reverse: false,
          children: const <Widget>[
            Text('1'),
            Text('2'),
            Text('3'),
            Text('4'),
          ],
        ),
      ),
    );
  }
}
