import 'package:flutter/material.dart';

import 'package:intl/intl.dart';

import '../../../room/containers/page.dart';
import '../../../room_list/components/parts/member_icon_list.dart';

class ParticipatingRoomListTileComponent extends StatelessWidget {
  const ParticipatingRoomListTileComponent({super.key});

  @override
  Widget build(BuildContext context) {
    DateFormat outputFormat = DateFormat('yyyy年MM月');

    return Container(
      width: MediaQuery.of(context).size.width,
      height: 140,
      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(4.0)),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black12,
            blurRadius: 4.0,
            offset: Offset(0.0, 4.0),
          ),
        ],
      ),
      child: InkWell(
        onTap: (() {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const RoomPageContainer(),
            ),
          );
        }),
        child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30, top: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "title",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              Text(outputFormat.format(DateTime.now())),
              const SizedBox(height: 10),
              const MemberIconListComponent(
                users: [1, 1, 1],
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
