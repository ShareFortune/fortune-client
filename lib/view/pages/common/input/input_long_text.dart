import 'package:flutter/material.dart';
import 'package:fortune_client/view/routes/route_navigator.dart';
import 'package:fortune_client/view/theme/app_text_theme.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/app_bar/back_app_bar.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class InputLongTextPageArguments {
  final String? title;
  final String? initialValue;
  final Function(String)? onChanged;

  InputLongTextPageArguments({
    this.title,
    this.initialValue,
    this.onChanged,
  });
}

class InputLongTextPage extends StatefulHookConsumerWidget {
  const InputLongTextPage(this.arguments, {super.key});

  final InputLongTextPageArguments arguments;

  @override
  ConsumerState<InputLongTextPage> createState() => _InputLongTextPageState();
}

class _InputLongTextPageState extends ConsumerState<InputLongTextPage> {
  InputLongTextPageArguments get arguments => widget.arguments;

  /// 入力コントローラ
  late TextEditingController _controller;

  /// 現在のフォーカス
  FocusNode? get focus => FocusManager.instance.primaryFocus;

  @override
  void initState() {
    _controller = TextEditingController(text: arguments.initialValue);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final theme = ref.watch(appThemeProvider);

    return GestureDetector(
      onTap: () => focus?.unfocus(),
      behavior: HitTestBehavior.opaque,
      child: Scaffold(
        backgroundColor: theme.appColors.onBackground,
        appBar: BackAppBar(
          title: arguments.title ?? '',
          action: [
            TextButton(
              onPressed: () {
                arguments.onChanged?.call(_controller.text);
                navigator.goBack();
              },
              child: Text("保存", style: theme.textTheme.h40.bold()),
            ),
          ],
        ),
        body: GestureDetector(
          onTap: () {
            if (focus?.hasFocus == false) focus?.requestFocus();
          },
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: TextFormField(
              autofocus: true,
              maxLines: null,
              controller: _controller,
              keyboardType: TextInputType.multiline,
              style: theme.textTheme.h50,
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.all(30),
                border: InputBorder.none,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
