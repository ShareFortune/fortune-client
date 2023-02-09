import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

Future<T?> showPlatformDialog<T>({
  required BuildContext context,
  MaterialDialogData? material,
  CupertinoDialogData? cupertino,
  WidgetBuilder? builder,
  bool? barrierDismissible,
  RouteSettings? routeSettings,
  bool useRootNavigator = true,
  @Deprecated('Use material.useSafeArea instead')
      bool materialUseSafeArea = true,
  @Deprecated('Use material.barrierColor instead')
      Color? materialBarrierColor = Colors.black54,
  String? barrierLabel,
  Offset? anchorPoint,
}) {
  if (isMaterial(context)) {
    assert(material?.builder != null || builder != null);

    return showDialog<T>(
      context: context,
      builder: material?.builder ?? builder!,
      barrierDismissible:
          material?.barrierDismissible ?? barrierDismissible ?? true,
      routeSettings: material?.routeSettings ?? routeSettings,
      useRootNavigator: material?.useRootNavigator ?? useRootNavigator,
      useSafeArea: material?.useSafeArea ?? materialUseSafeArea,
      barrierColor: material?.barrierColor ?? materialBarrierColor,
      barrierLabel: material?.barrierLabel ?? barrierLabel,
      anchorPoint: material?.anchorPoint ?? anchorPoint,
    );
  } else {
    assert(cupertino?.builder != null || builder != null);

    return showCupertinoDialog<T>(
      context: context,
      builder: cupertino?.builder ?? builder!,
      routeSettings: cupertino?.routeSettings ?? routeSettings,
      useRootNavigator: cupertino?.useRootNavigator ?? useRootNavigator,
      barrierDismissible:
          cupertino?.barrierDismissible ?? barrierDismissible ?? false,
      barrierLabel: cupertino?.barrierLabel ?? barrierLabel,
      anchorPoint: cupertino?.anchorPoint ?? anchorPoint,
    );
  }
}
