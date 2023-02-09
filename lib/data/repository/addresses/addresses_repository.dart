import 'package:fortune_client/data/model/base/address/address.dart';
import 'package:fortune_client/data/model/base/address_with_id/address_with_id.dart';

abstract class AddressesRepository {
  /// 検索
  /// [keyword]検索キーワード
  Future<List<AddressWithId>> search(String keyword);
}
