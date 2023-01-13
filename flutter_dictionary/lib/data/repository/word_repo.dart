import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dictionary/data/model/word.dart';

class WordRepo {
  final String url = 'https://api.dictionaryapi.dev/api/v2/entries/en/';

  Future<Word> getMeaning(String word) async {
    final String _uri = (url + word);
    debugPrint('uri => $_uri');
    final response = await Dio().get(_uri);

    if (response.statusCode == 200 || response.statusCode == 201) {
      Word word = Word.fromJson((response.data)[0]);
      //  Word word = jsonDecode(response.data) as Map<String, dynamic>;
      return word;
    } else {
      throw Exception("Failed to load ");
    }
  }
}
