import 'package:flutter/material.dart';
import 'package:fortune_client/data/model/tags/tag/tag.dart';
import 'package:fortune_client/view/pages/tags/search/search_tags_page.dart';
import 'package:fortune_client/view/routes/route_navigator.dart';
import 'package:fortune_client/view/widgets/profile/profile_view_item.dart';
import 'package:fortune_client/view/widgets/tag/tags_wraper.dart';

/// タグ
class ProfileTagWidget extends StatelessWidget {
  const ProfileTagWidget({
    Key? key,
    required this.tags,
    this.onEdited,
  }) : super(key: key);

  final List<Tag> tags;
  final Function(List<Tag>)? onEdited;

  /// 自己紹介があるかどうか
  bool get hasData => tags.isNotEmpty;

  /// 編集可能かどうか
  bool get isEditable => onEdited != null;

  @override
  Widget build(BuildContext context) {
    return ProfileItemContainer(
      title: "タグ",
      onTapped: () async {
        await navigator.navigateTo(
          RoutePath.searchTag,
          arguments: SearchTagsPageAuguments(
            tags: tags,
            onChanged: onEdited?.call,
          ),
        );
      },
      isEditable: onEdited != null,
      child: TagsWraper(tags),
    );
  }
}
