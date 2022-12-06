import 'dart:convert';

import 'package:flutter/services.dart';

class StubLoader {
  Future<T> getEntity<T>(
      T Function(Map<String, dynamic>) func, String path) async {
    return func(await loadJson(path));
  }

  Future<Map<String, dynamic>> loadJson(String path) async {
    final json = await rootBundle.loadString(path);
    return jsonDecode(json);
  }
}
