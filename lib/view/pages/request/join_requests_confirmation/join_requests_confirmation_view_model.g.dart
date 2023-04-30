// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'join_requests_confirmation_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$joinRequestsConfirmationViewModelHash() =>
    r'cb44b51b4ddb154f172225e58ecb77d9514a68af';

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

abstract class _$JoinRequestsConfirmationViewModel
    extends BuildlessAutoDisposeAsyncNotifier<JoinRequestsConfirmationState> {
  late final JoinRequestsConfirmationPageAuguments auguments;

  Future<JoinRequestsConfirmationState> build(
    JoinRequestsConfirmationPageAuguments auguments,
  );
}

/// See also [JoinRequestsConfirmationViewModel].
@ProviderFor(JoinRequestsConfirmationViewModel)
const joinRequestsConfirmationViewModelProvider =
    JoinRequestsConfirmationViewModelFamily();

/// See also [JoinRequestsConfirmationViewModel].
class JoinRequestsConfirmationViewModelFamily
    extends Family<AsyncValue<JoinRequestsConfirmationState>> {
  /// See also [JoinRequestsConfirmationViewModel].
  const JoinRequestsConfirmationViewModelFamily();

  /// See also [JoinRequestsConfirmationViewModel].
  JoinRequestsConfirmationViewModelProvider call(
    JoinRequestsConfirmationPageAuguments auguments,
  ) {
    return JoinRequestsConfirmationViewModelProvider(
      auguments,
    );
  }

  @override
  JoinRequestsConfirmationViewModelProvider getProviderOverride(
    covariant JoinRequestsConfirmationViewModelProvider provider,
  ) {
    return call(
      provider.auguments,
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
  String? get name => r'joinRequestsConfirmationViewModelProvider';
}

/// See also [JoinRequestsConfirmationViewModel].
class JoinRequestsConfirmationViewModelProvider
    extends AutoDisposeAsyncNotifierProviderImpl<
        JoinRequestsConfirmationViewModel, JoinRequestsConfirmationState> {
  /// See also [JoinRequestsConfirmationViewModel].
  JoinRequestsConfirmationViewModelProvider(
    this.auguments,
  ) : super.internal(
          () => JoinRequestsConfirmationViewModel()..auguments = auguments,
          from: joinRequestsConfirmationViewModelProvider,
          name: r'joinRequestsConfirmationViewModelProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$joinRequestsConfirmationViewModelHash,
          dependencies: JoinRequestsConfirmationViewModelFamily._dependencies,
          allTransitiveDependencies: JoinRequestsConfirmationViewModelFamily
              ._allTransitiveDependencies,
        );

  final JoinRequestsConfirmationPageAuguments auguments;

  @override
  bool operator ==(Object other) {
    return other is JoinRequestsConfirmationViewModelProvider &&
        other.auguments == auguments;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, auguments.hashCode);

    return _SystemHash.finish(hash);
  }

  @override
  Future<JoinRequestsConfirmationState> runNotifierBuild(
    covariant JoinRequestsConfirmationViewModel notifier,
  ) {
    return notifier.build(
      auguments,
    );
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
