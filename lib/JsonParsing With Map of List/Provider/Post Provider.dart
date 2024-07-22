import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../Modal/Post Modal.dart';

class PostProvider extends ChangeNotifier
{
  late PostModal postModal;

  Future<void> jsonParsing()
  async {
    String json = await rootBundle.loadString('assets/json/post.json');
    final response = jsonDecode(json);
    postModal = PostModal.fromJson(response);
    notifyListeners();
  }

  PostProvider()
  {
    jsonParsing();
  }
}