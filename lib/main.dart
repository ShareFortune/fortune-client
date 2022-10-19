import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'presentation/providers/tab.dart';

import 'views/widgets/navigation/containers/page.dart';

void main() async {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentTab = ref.watch(currentTabProvider.state);

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        /// ボトムナビゲーションバー
        bottomNavigationBar: const BottomNavigationBarContainer(),

        /// ボトムナビゲーションバーに応じて表示するウィジットを変更
        body: Stack(
          children: TabItem.values
              .map(
                (tabItem) => Offstage(
                  offstage: currentTab.state != tabItem,
                  child: tabItem.page,
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
