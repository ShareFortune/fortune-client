import 'package:fortune_client/data/model/core/base/address/address.dart';
import 'package:fortune_client/data/model/core/base/address_with_id/address_with_id.dart';

abstract class AddressesRepository {
  /// 検索
  /// [keyword]検索キーワード
  Future<List<AddressWithId>> search(String keyword);
}
