import 'package:flutter/material.dart';
import 'package:fortune_client/injector.dart';
import 'package:fortune_client/view/routes/app_router.gr.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sizer/sizer.dart';

class MyApp extends HookConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);
    final themeMode = ref.watch(appThemeModeProvider);

    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp.router(
        debugShowCheckedModeBanner: false,
        useInheritedMediaQuery: true,
        theme: theme.data,
        darkTheme: AppTheme.dark().data,
        themeMode: themeMode,
        // locale: DevicePreview.locale(context),
        // localizationsDelegates: L10n.localizationsDelegates,
        // supportedLocales: L10n.supportedLocales,
        routeInformationParser: sl<AppRouter>().defaultRouteParser(),
        routerDelegate: sl<AppRouter>().delegate(),
      );
    });
  }
}
