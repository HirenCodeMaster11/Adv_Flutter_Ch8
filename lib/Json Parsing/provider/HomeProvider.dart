import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

import '../modal/HomeModal.dart';

class HomeProvider extends ChangeNotifier {
  List<Album> albumList = [];

  Future<void> jsonParsing() async {
    String json = await rootBundle.loadString('assets/json/jsonData.json');
    List list =jsonDecode(json);

    albumList = list
        .map(
          (e) => Album.fromMap(e),
    )
        .toList();
    notifyListeners();
    print(albumList);
    notifyListeners();
  }

  // Future<void> fromList() async {
  //   List album = await jsonParsing();
  //
  //
  //   notifyListeners();
  // }

  HomeProvider() {
    jsonParsing();
  }
}
