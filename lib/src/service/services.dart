import 'dart:convert';
import 'package:blue_open/src/model/data_model.dart';
import 'package:flutter/services.dart' show rootBundle;

import 'package:flutter/services.dart';

class Services {
  Future<String> _fetchjson() async {
    return await rootBundle.loadString('account.json');
  }

  Future<List<Data?>> fetchAccount() async {
    List<Data?> result;
    String jsonString = await _fetchjson();
    final response = json.decode(jsonString);

    result = response.map<Data?>((json) => Data.fromJson(json)).toList();

    return result.toList();
  }
}
