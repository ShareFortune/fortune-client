import 'dart:async';

import 'package:easy_localization/easy_localization.dart';
import 'package:enum_to_string/enum_to_string.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:fortune_client/foundation/constants.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:device_preview/device_preview.dart';
import 'package:fortune_client/injector.dart';
import 'package:fortune_client/util/logger/logger.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'app.dart';

void main() async {
  await Future.wait([
    Future(() async {
      await dotenv.load(fileName: ".env");
      WidgetsFlutterBinding.ensureInitialized();
      await EasyLocalization.ensureInitialized();
      await Firebase.initializeApp(
        options: Constants.of().firebaseOptions,
      );
      bool testMode = false;
      // testMode = true;
      await initDependencies(testMode: testMode);
    }),
  ]);

  if (Constants.flavor == Flavor.dev) {
    Fluttertoast.showToast(
      msg: "flavor: ${EnumToString.convertToString(Constants.flavor)}",
    );
  }

  runZonedGuarded(
    () => runApp(
      EasyLocalization(
        path: 'assets/l10n',
        supportedLocales: const [Locale('ja', 'JP')],
        fallbackLocale: const Locale('ja', 'JP'),
        child: ProviderScope(
          child: DevicePreview(
            enabled: !kReleaseMode && Constants.enablePreview,
            builder: (context) => const MyApp(),
          ),
        ),
      ),
    ),
    (error, stackTrace) {
      logger.e(error, stackTrace);
    },
  );
}
