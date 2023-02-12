import 'package:flutter/material.dart';
import 'package:fortune_client/view/widgets/other/error_widget.dart';
import 'package:fortune_client/view/widgets/other/loading_widget.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AsyncValueWidget<T> extends StatelessWidget {
  const AsyncValueWidget({
    Key? key,
    required this.data,
    required this.builder,
  }) : super(key: key);

  final AsyncValue<T> data;
  final Widget Function(T) builder;

  @override
  Widget build(BuildContext context) {
    return data.when(
      data: (data) {
        return builder(data);
      },
      error: (e, msg) {
        return errorWidget(e, msg);
      },
      loading: () {
        return loadingWidget();
      },
    );
  }
}
