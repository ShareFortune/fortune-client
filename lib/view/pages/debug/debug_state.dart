import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:package_info_plus/package_info_plus.dart';

part 'debug_state.freezed.dart';

@freezed
class DebugState with _$DebugState {
  const factory DebugState({
    required PackageInfo debugInfo,
    required bool isAutomaticLogin,
  }) = _DebugState;
}
