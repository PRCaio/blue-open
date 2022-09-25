import 'dart:convert';
import 'dart:developer';
import 'package:blue_open/src/model/data_model.dart';
import 'package:flutter/services.dart' show rootBundle;

import 'package:flutter/services.dart';

class Services {
  Future<String> _fetchjson() async {
    try {
      return await rootBundle.loadString('assets/account.json');
    } on Exception catch (e) {
      log(e.toString());
      rethrow;
    }
  }

  Future<List<Data?>> fetchAccount() async {
    try {
      List<Data?> result;
      String jsonString = await _fetchjson();
      final response = json.decode(jsonString);

      result = response.map<Data?>((json) => Data.fromJson(json)).toList();

      return result.toList();
    } on Exception catch (e) {
      log(e.toString());
      rethrow;
    }
  }
}
