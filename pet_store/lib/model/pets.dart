// import 'package:dio/src/response.dart';
// import 'package:built_collection/src/list.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:openapi/openapi.dart';

// class Pets {
//   final List<String> statusList = ["pending"];
// //static  BuiltList<String> statusList = BuiltList([Iterable<String> iterable = const ['"available", "sold"']]);

//   Future<Response<BuiltList<Pet>>> petList() {
//     Future<Response<BuiltList<Pet>>> _petList = Openapi()
//         .getPetApi()
//         .findPetsByStatus(status: BuiltList<String>(statusList));
//     //_petList.then((value) => debugPrint('result : $value'));
//     //debugPrint('pets ; ${petList()}');

//     return _petList;
//   }
// }
