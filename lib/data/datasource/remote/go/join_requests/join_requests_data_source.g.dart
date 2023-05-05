// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'join_requests_data_source.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _JoinRequestsDataSource implements JoinRequestsDataSource {
  _JoinRequestsDataSource(
    this._dio, {
    this.baseUrl,
  });

  final Dio _dio;

  String? baseUrl;

  @override
  Future<RoomIdResponse> sendJoinRequest(String roomId) async {
    const _extra = <String, dynamic>{'append-token': true};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<RoomIdResponse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/rooms/${roomId}/roomJoinRequests',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = RoomIdResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<JoinRequestsResponse> getJoinRequest(
    String id, {
    String? nextToken,
    int? perPage,
  }) async {
    const _extra = <String, dynamic>{'append-token': true};
    final queryParameters = <String, dynamic>{
      r'nextToken': nextToken,
      r'perPage': perPage,
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<JoinRequestsResponse>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/rooms/${id}/roomJoinRequests',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = JoinRequestsResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<RoomIdResponse> accept(String requestId) async {
    const _extra = <String, dynamic>{'append-token': true};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<RoomIdResponse>(Options(
      method: 'PATCH',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/roomJoinRequests/${requestId}/accept',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = RoomIdResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<RoomIdResponse> reject(String requestId) async {
    const _extra = <String, dynamic>{'append-token': true};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<RoomIdResponse>(Options(
      method: 'PATCH',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/roomJoinRequests/${requestId}/reject',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = RoomIdResponse.fromJson(_result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
