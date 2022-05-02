import 'package:dio/src/response.dart';
import 'package:built_collection/src/list.dart';
import 'package:flutter/cupertino.dart';
import 'package:openapi/openapi.dart';

class Pets {
  BuiltList<String> statusList = BuiltList(['available']);

  Future<Response<BuiltList<Pet>>>? petList() async {
    Future<Response<BuiltList<Pet>>> _petList = Openapi()
        .getPetApi()
        .findPetsByStatus(status: statusList.toBuiltList());
    // debugPrint('$_petList');
    // Openapi()
    //     .getPetApi()
    //     .findPetsByStatus(status: statusList.toBuiltList());

    // Response<BuiltList<Pet>> listPet =
    // await _petList; //(await _petList).data!.asList(); // as List<Pet>;
    return _petList;
  }
}
