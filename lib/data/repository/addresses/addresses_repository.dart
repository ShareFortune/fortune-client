import 'package:fortune_client/data/model/addresses/address/address.dart';
import 'package:fortune_client/data/model/addresses/address_with_id/address_with_id.dart';

abstract class AddressesRepository {
  /// 検索
  /// [keyword]検索キーワード
  Future<List<AddressWithId>> search(String keyword);

  /// 住所データからIDを取得
  /// 見つからなかった場合は[-1]を投げる
  Future<int> getId(Address address);
}
