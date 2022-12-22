import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:package_info_plus/package_info_plus.dart';

final debugInfoProvider = FutureProvider<PackageInfo>((_) async {
  final info = await PackageInfo.fromPlatform();
  return info;
});

final debugInfoBuildNumberProvider = Provider<String>((ref) {
  final debugInfo = ref.watch(debugInfoProvider);
  return debugInfo.when<String>(
    data: (data) => data.buildNumber,
    error: ((e, stk) => "Error occurred"),
    loading: () => "Loading...",
  );
});
