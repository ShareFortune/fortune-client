import 'package:fortune_client/data/model/base/address/address.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'entry_address_state.freezed.dart';

@freezed
class EntryAddressState with _$EntryAddressState {
  const factory EntryAddressState({
    @Default(false) bool searchResultsIsDisplay,
    Address? adress,
    @Default(AsyncData([])) AsyncValue<List<Address>> searchResults,
  }) = _EntryAddresState;
}
