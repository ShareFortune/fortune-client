// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'room_input_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$roomInputViewModelHash() =>
    r'4ed726f4ee46c8c50bcd59b23c949b8fc2de39b0';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$RoomInputViewModel
    extends BuildlessAutoDisposeNotifier<RoomInputState> {
  late final RoomInputPageArguments arguments;

  RoomInputState build(
    RoomInputPageArguments arguments,
  );
}

/// See also [RoomInputViewModel].
@ProviderFor(RoomInputViewModel)
const roomInputViewModelProvider = RoomInputViewModelFamily();

/// See also [RoomInputViewModel].
class RoomInputViewModelFamily extends Family<RoomInputState> {
  /// See also [RoomInputViewModel].
  const RoomInputViewModelFamily();

  /// See also [RoomInputViewModel].
  RoomInputViewModelProvider call(
    RoomInputPageArguments arguments,
  ) {
    return RoomInputViewModelProvider(
      arguments,
    );
  }

  @override
  RoomInputViewModelProvider getProviderOverride(
    covariant RoomInputViewModelProvider provider,
  ) {
    return call(
      provider.arguments,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'roomInputViewModelProvider';
}

/// See also [RoomInputViewModel].
class RoomInputViewModelProvider extends AutoDisposeNotifierProviderImpl<
    RoomInputViewModel, RoomInputState> {
  /// See also [RoomInputViewModel].
  RoomInputViewModelProvider(
    this.arguments,
  ) : super.internal(
          () => RoomInputViewModel()..arguments = arguments,
          from: roomInputViewModelProvider,
          name: r'roomInputViewModelProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$roomInputViewModelHash,
          dependencies: RoomInputViewModelFamily._dependencies,
          allTransitiveDependencies:
              RoomInputViewModelFamily._allTransitiveDependencies,
        );

  final RoomInputPageArguments arguments;

  @override
  bool operator ==(Object other) {
    return other is RoomInputViewModelProvider && other.arguments == arguments;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, arguments.hashCode);

    return _SystemHash.finish(hash);
  }

  @override
  RoomInputState runNotifierBuild(
    covariant RoomInputViewModel notifier,
  ) {
    return notifier.build(
      arguments,
    );
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
