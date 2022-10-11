import 'package:flutter/material.dart';

import '../../message_room/containers/page.dart';

class MessageRoomListPageComponent extends StatelessWidget {
  const MessageRoomListPageComponent({super.key});

  @override
  Widget build(BuildContext context) {
    const userIcon =
        "https://gws-ug.jp/wp-content/plugins/all-in-one-seo-pack/images/default-user-image.png";

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: const Text('メッセージ',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            )),
      ),
      body: ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 20,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              title: const Text(
                "渋谷に集まろー",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: const Text(
                "いつ集まりますか？ 今週の月曜都合よければ集まりませんか？",
                maxLines: 2,
                style: TextStyle(fontSize: 14),
              ),
              leading: const CircleAvatar(
                radius: 26,
                backgroundImage: NetworkImage(userIcon),
              ),
              trailing: Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  Container(
                    height: 25,
                    padding:
                        const EdgeInsets.only(left: 10, right: 10, top: 4.2),
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Text(
                      "10",
                      maxLines: 1,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Text(
                    "昨日",
                    style: TextStyle(fontSize: 10),
                  ),
                ],
              ),
              onTap: (() {
                ///
                /// メッセージルームに遷移
                Navigator.of(context, rootNavigator: true).push(
                  MaterialPageRoute(
                    builder: (context) => const MessageRoomPageContainer(),
                  ),
                );
              }),
            ),
          );
        },
      ),
    );
  }
}

// body: ListView.builder(
//       itemCount: 20,
//       shrinkWrap: true,
//       physics: const NeverScrollableScrollPhysics(),
//       itemBuilder: (context, index) {
//         return Row(
//           children: [
//             const CircleAvatar(
//               radius: 26,
//               backgroundImage: NetworkImage(userIcon),
//             ),
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: const [
//                 Text(
//                   "渋谷に集まろー",
//                   style: TextStyle(fontWeight: FontWeight.bold),
//                 ),
//                 Text(
//                   "いつ集まりますか？ 今週の月曜都合よければ集まりませんか？",
//                   maxLines: 2,
//                   softWrap: true,
//                   style: TextStyle(fontSize: 14),
//                 ),
//               ],
//             ),
//             Column(
//               children: [
//                 Container(
//                   height: 25,
//                   padding:
//                       const EdgeInsets.only(left: 10, right: 10, top: 4.2),
//                   decoration: BoxDecoration(
//                     color: Colors.green,
//                     borderRadius: BorderRadius.circular(15),
//                   ),
//                   child: const Text(
//                     "10",
//                     maxLines: 1,
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ),
//                 Text(
//                   "昨日",
//                   style: TextStyle(fontSize: 10),
//                 ),
//               ],
//             ),
//           ],
//         );
//       }),
