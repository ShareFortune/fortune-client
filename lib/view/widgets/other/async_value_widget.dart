import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:fortune_client/util/error/fortune_error.dart';
import 'package:fortune_client/util/error/fortune_exception.dart';
import 'package:fortune_client/view/widgets/other/error_widget.dart';
import 'package:fortune_client/view/widgets/other/loading_widget.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AsyncValueWidget<T> extends StatelessWidget {
  const AsyncValueWidget({
    Key? key,
    required this.data,
    required this.builder,
    this.errorBuilder,
    this.loadingBuilder,
  }) : super(key: key);

  final AsyncValue<T> data;
  final Widget Function(T) builder;
  final Widget Function(Object, StackTrace)? errorBuilder;
  final Widget Function()? loadingBuilder;

  @override
  Widget build(BuildContext context) {
    return data.when(
      data: (data) => builder(data),
      loading: () => loadingBuilder?.call() ?? loadingWidget(),
      error: (e, stk) {
        /// Widgetの生成を待機
        WidgetsBinding.instance.addPostFrameCallback((_) {
          /// Exception
          final exception = catchFortuneError<FortuneException>(e);
          if (exception != null) {
            FortuneError(type: exception.type).handle(context: context);
          }

          /// Error
          final error = catchFortuneError<FortuneError>(e);
          if (error != null) {
            error.handle(context: context);
          }
        });

        return errorBuilder?.call(e, stk) ?? errorWidget(e, stk);
      },
    );
  }

  /// 取得した例外またはエラーをキャスト
  /// キャストできない場合はNullとして返却
  ErrorType? catchFortuneError<ErrorType>(Object error) {
    if (error is ErrorType) return error as ErrorType;
    if (error is DioError) {
      if (error.error is ErrorType) return error.error as ErrorType;
    }
    return null;
  }
}
