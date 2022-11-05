import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fortune_client/view/pages/account/account/containers/page.dart';
import 'package:fortune_client/view/pages/rooms/room_detail/room_detail_view_model.dart';
import 'package:fortune_client/view/widgets/icon_list_view.dart';
import 'package:fortune_client/view/widgets/tag_wrapper.dart';

class RoomDetailPage extends ConsumerWidget {
  const RoomDetailPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(roomDetailViewModelProvider);
    final viewModel = ref.watch(roomDetailViewModelProvider.notifier);

    const textStyleTitle = TextStyle(
      fontSize: 20,
      color: Colors.black,
      fontWeight: FontWeight.bold,
    );
    const textStyleSubTitle = TextStyle(
      fontSize: 18,
      color: Colors.black,
      fontWeight: FontWeight.bold,
    );

    return state.when(
      data: (data) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            elevation: 0,
            leading: IconButton(
              onPressed: Navigator.of(context).pop,
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              ),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.ios_share,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30, top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          /// タイトル
                          _titleField(textStyleTitle),

                          /// 参加ボタン
                          const SizedBox(width: 10),
                          _joinButton(context),
                        ],
                      ),

                      /// タグ
                      const SizedBox(height: 30),
                      const TagWrapper(),
                    ],
                  ),
                ),

                const Divider(),

                /// 参加者
                IconListView(
                  onTapParticipantIcon: () {},
                ),

                const Divider(),

                /// 説明
                Padding(
                  padding: const EdgeInsets.only(
                      left: 30, right: 30, top: 50, bottom: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("ルーム基本情報", style: textStyleSubTitle),

                      const SizedBox(height: 30),

                      /// 開催場所
                      holdingPlace(),

                      /// 説明
                      const SizedBox(height: 30),
                      roomExplanation(),

                      /// キャンセル
                      const SizedBox(height: 30),
                      const Text(
                        "キャンセルポリシー",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
      error: (error, stackTrace) => const Center(child: Text("error")),
      loading: () => const CircularProgressIndicator(),
    );
  }

  Widget roomExplanation() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          "ルームの説明",
          style: TextStyle(
            fontSize: 15,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          "ゲーム好き集合。好きなゲームについて話しませんか？",
          style: TextStyle(
            fontSize: 15,
            color: Colors.black,
          ),
        ),
      ],
    );
  }

  Widget _titleField(TextStyle textStyle) {
    return Flexible(
      child: Text(
        "ルームタイトル",
        style: textStyle,
      ),
    );
  }

  Widget holdingPlace() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        IconButton(
          onPressed: (() {}),
          icon: const Icon(Icons.location_on),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "開催場所",
              style: TextStyle(
                fontSize: 15,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              "東京都調布市",
              style: TextStyle(
                fontSize: 15,
                color: Colors.black,
              ),
            ),
            TextButton(
                onPressed: () {},
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsets.zero),
                  minimumSize: MaterialStateProperty.all(Size.zero),
                  // tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
                child: const Text(
                  "Googleマップで表示",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.blue,
                  ),
                )),
          ],
        ),
      ],
    );
  }

  Widget _joinButton(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(100, 50),
        backgroundColor: Colors.blue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      child: const Text(
        "参加",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const AccountPegeContainer(),
          ),
        );
      },
    );
  }
}
