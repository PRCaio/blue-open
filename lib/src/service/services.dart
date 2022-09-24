import 'dart:convert';
import 'dart:developer';
import 'package:blue_open/src/model/data_model.dart';
import 'package:flutter/services.dart' show rootBundle;

import 'package:flutter/services.dart';

class Services {
  Future<String> _fetchjson() async {
    return await rootBundle.loadString('data/account.json');
  }

  Future<Data?> fetchAccount() async {
    String jsonString = await _fetchjson();
    final jsonResponse = json.decode(jsonString);

    Data account = Data.fromJson(jsonResponse);

    log(account.toString());
  }
}
