import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:fortune_client/presentation/view/routes/app_router.gr.dart';
import 'package:fortune_client/presentation/view/routes/route_guard.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authGuard = ref.watch(authGuardProvider);
    final appRouter = AppRouter(authGuard: authGuard);

    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routerDelegate: appRouter.delegate(),
      // routerDelegate: AutoRouterDelegate.declarative(
      //   appRouter,
      //   routes: routes,
      // ),
      routeInformationParser: appRouter.defaultRouteParser(),
    );
  }
}
