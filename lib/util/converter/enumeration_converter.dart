import 'package:freezed_annotation/freezed_annotation.dart';

class EnumerationConverter<T extends Enum> implements JsonConverter<T, String> {
  const EnumerationConverter(this._from, this._to);

  final T Function(String) _from;
  final String Function(T) _to;

  @override
  T fromJson(String rawValue) => _from(rawValue);

  @override
  String toJson(T status) => _to(status);
}
