import 'dart:convert';

import 'package:adv_flutter_ch8/Json%20Parsing%202/Modal/userModal.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class UserProvider extends ChangeNotifier {
  List<Usermodal> userData = [];

  Future<void> jsonParsing() async {
    String json = await rootBundle.loadString('assets/json/User.json');
    List users= jsonDecode(json);

    userData = users.map((e) => Usermodal.fromJson(e),).toList();
    notifyListeners();
  }

  UserProvider()
  {
    jsonParsing();
  }
}