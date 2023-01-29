import 'package:fortune_client/data/model/base/address/address.dart';

abstract class AddressesRepository {
  /// 検索
  /// [keyword]検索キーワード
  Future<List<Address>> search(String keyword);
}
