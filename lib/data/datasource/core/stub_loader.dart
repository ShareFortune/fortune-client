import 'dart:convert';

import 'package:flutter/services.dart';

class StubLoader {
  Future<T> entity<T>(
      T Function(Map<String, dynamic>) from, String path) async {
    return from(await loadJson(path));
  }

  Future<Map<String, dynamic>> loadJson(String path) async {
    final json = await rootBundle.loadString(path);
    return jsonDecode(json);
  }
}
