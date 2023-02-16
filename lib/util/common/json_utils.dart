import 'dart:convert';

import 'package:flutter/services.dart';

class JsonUtils {
  static Future<Map<String, dynamic>> load(String path) async {
    final json = await rootBundle.loadString(path);
    return jsonDecode(json);
  }
}
