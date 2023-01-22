import 'package:flutter/material.dart';
import 'package:fortune_client/data/model/tag/tag.dart';
import 'package:fortune_client/view/pages/account/my_page/components/my_profile_container.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/other/tag_widget.dart';

class MyProfileTagsContainer extends StatelessWidget {
  const MyProfileTagsContainer({
    super.key,
    required this.theme,
    required this.tags,
  });

  final AppTheme theme;
  final List<Tag> tags;

  @override
  Widget build(BuildContext context) {
    return MyProfileContainer(
      theme: theme,
      title: "設定しているタグ",
      trailing: null,
      onTapContainer: () {},
      child: Wrap(
        spacing: 10,
        runSpacing: 10,
        children: tags.map((e) {
          return TagWidget(value: e.name);
        }).toList(),
      ),
    );
  }
}
