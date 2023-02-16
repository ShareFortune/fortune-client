import 'package:fortune_client/data/model/core/base/address_with_id/address_with_id.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'entry_address_state.freezed.dart';

@freezed
class EntryAddressState with _$EntryAddressState {
  const factory EntryAddressState({
    @Default(false) bool searchResultsIsDisplay,
    @Default(AsyncData([])) AsyncValue<List<AddressWithId>> searchResults,
  }) = _EntryAddresState;
}
