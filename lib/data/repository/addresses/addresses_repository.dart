import 'package:fortune_client/data/model/address/address.dart';

abstract class AddressesRepository {
  /// 検索
  /// [keyword]検索キーワード
  Future<Addresses> search(String keyword);
}
