import 'package:flutter/material.dart';
import 'package:fortune_client/view/pages/common/basic_app_bar/basic_app_bar_state.dart';
import 'package:fortune_client/view/pages/debug/debug_page.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class BasicAppbar extends HookConsumerWidget implements PreferredSizeWidget {
  final Widget widget;
  final Widget? leading;
  final List<Widget>? actions;
  final bool automaticallyImplyLeading;
  final double? titleSpacing;
  final double? leadingWidth;
  final bool centerTitle;

  final double hieght = 140;

  const BasicAppbar({
    Key? key,
    required this.widget,
    this.leading,
    this.actions,
    this.automaticallyImplyLeading = true,
    this.titleSpacing,
    this.leadingWidth,
    this.centerTitle = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = BasicAppBarState();

    return AppBar(
      bottom: bottom(context),
      backgroundColor: Colors.white,
      titleSpacing: titleSpacing,
      leadingWidth: leadingWidth,
      elevation: 0,
      centerTitle: centerTitle,
      leading: leading,
      actions: actions,
      automaticallyImplyLeading: automaticallyImplyLeading,
      toolbarHeight: hieght,
    );
  }

  bottom(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(hieght),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        width: double.infinity,
        child: widget,
        // child: GestureDetector(
        //   onDoubleTap: () {
        //     Navigator.of(context).push(
        //       MaterialPageRoute(
        //         builder: (context) => const DebugPage(),
        //       ),
        //     );
        //   },
        //   child: widget,
        // ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(hieght);
}
