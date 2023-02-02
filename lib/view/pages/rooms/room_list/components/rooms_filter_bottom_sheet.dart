import 'package:flutter/material.dart';
import 'package:fortune_client/data/model/base/address_with_id/address_with_id.dart';
import 'package:fortune_client/data/model/base/tag/tag.dart';
import 'package:fortune_client/view/pages/rooms/room_list/components/rooms_filter_expanded_tile.dart';
import 'package:fortune_client/view/pages/rooms/room_list/components/rooms_filter_tile.dart';
import 'package:fortune_client/view/pages/rooms/room_list/room_list_state.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/button/base_button.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RoomsFilterBottomSheet extends StatefulHookConsumerWidget {
  const RoomsFilterBottomSheet({
    Key? key,
    required this.filter,
    required this.onSelectAddress,
    required this.onSelectTags,
  }) : super(key: key);

  /// 設定中のフィルター
  final RoomListStateFilter filter;

  /// 開催地検索
  final Future<AddressWithId?> Function() onSelectAddress;

  /// タグ検索
  final Future<List<Tag>?> Function() onSelectTags;

  static Future<RoomListStateFilter?> show(
    BuildContext context, {
    required RoomListStateFilter filter,
    required Future<AddressWithId?> Function() onSelectAddress,
    required Future<List<Tag>?> Function() onSelectTags,
  }) {
    return showModalBottomSheet<RoomListStateFilter?>(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) {
        return RoomsFilterBottomSheet(
          filter: filter,
          onSelectAddress: onSelectAddress,
          onSelectTags: onSelectTags,
        );
      },
    );
  }

  @override
  ConsumerState<RoomsFilterBottomSheet> createState() =>
      _RoomsFilterBottomSheetState();
}

class _RoomsFilterBottomSheetState
    extends ConsumerState<RoomsFilterBottomSheet> {
  /// 設定したフィルタ
  late RoomListStateFilter filter;

  @override
  void initState() {
    filter = widget.filter;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final theme = ref.watch(appThemeProvider);

    return Column(
      children: [
        Expanded(
          child: GestureDetector(
            onTapDown: (details) => Navigator.pop(context),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.6,
          child: Stack(
            children: [
              Column(
                children: [
                  AppBar(
                    title: const Text('ルームの絞り込み'),
                    leading: Container(),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        topRight: Radius.circular(12),
                      ),
                    ),
                    actions: [
                      IconButton(
                        onPressed: () => Navigator.pop(context),
                        icon: const Icon(Icons.close),
                      ),
                    ],
                  ),
                  Expanded(
                    child: Container(
                      color: theme.appColors.onBackground,
                      child: ListView(
                        padding: const EdgeInsets.fromLTRB(20, 30, 15, 80),
                        children: [
                          /// 人数検索
                          RoomsFilterExpandedTile(
                            title: "人数",
                            value: filter.memberNum != null
                                ? "${filter.memberNum}人"
                                : null,
                            items: List.generate(7, (index) => "${index + 4}")
                                .toList(),
                            onSelect: (value) {
                              setState(() {
                                filter = filter.copyWith(
                                  memberNum: int.parse(value),
                                );
                              });
                            },
                          ),

                          /// 場所検索
                          RoomsFilterTile(
                            title: "場所",
                            value: filter.addressWithId?.text,
                            onTap: () async {
                              final address = await widget.onSelectAddress();
                              setState(() {
                                filter = filter.copyWith(
                                  addressWithId: address,
                                );
                              });
                            },
                          ),

                          /// タグ検索
                          RoomsFilterTile(
                            title: "タグ",
                            value: filter.tags
                                ?.map((e) => e.name)
                                .toList()
                                .join("、"),
                            onTap: () async {
                              final tags = await widget.onSelectTags();
                              setState(() {
                                filter = filter.copyWith(tags: tags);
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Positioned(
                bottom: 32,
                left: 16,
                right: 16,
                child: BaseButton(
                  theme: theme,
                  title: "この条件で探す",
                  onPressed: () => Navigator.pop(context, filter),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
