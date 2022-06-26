import 'dart:convert';

import 'package:flutter/material.dart';

Widget getImagenBase64(String imagen) {
  var _imageBase64 = imagen;
  //const Base64Codec base64 = Base64Codec();
  if (_imageBase64 == null) {
    return const Center(child: CircularProgressIndicator());
  } else if (_imageBase64.length % 4 > 0 && _imageBase64.length > 100) {
    _imageBase64 += '=' * (4 - _imageBase64.length % 4);
    debugPrint(_imageBase64);
    var bytes = const Base64Decoder().convert(_imageBase64);
    debugPrint('$bytes');
    return Image.memory(
      bytes,
      //width: 20,
      fit: BoxFit.fill,
    );
  } else if (_imageBase64.length > 100) {
    var bytes = const Base64Decoder().convert(_imageBase64);
    debugPrint('$bytes');
    return Image.memory(
      bytes,
      //width: 20,
      fit: BoxFit.fill,
    );
  } else {
    return const CircleAvatar(
      child: Image(
        image: AssetImage('assets/images/cat.jpg'),
        fit: BoxFit.fill,
      ),
    );
  }
}
