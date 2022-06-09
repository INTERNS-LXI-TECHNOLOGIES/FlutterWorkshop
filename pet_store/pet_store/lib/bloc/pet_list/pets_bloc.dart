import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';

import 'package:openapi/openapi.dart';

part 'pets_event.dart';
part 'pets_state.dart';

class PetsBloc extends Bloc<PetsEvent, PetsState> {
  //PetsBloc();

  PetsBloc() : super(PetsInitial(petList: [])) {
    on<LoadPetsByStatus>((event, emit) async {
      List<Pet> petList = await fetchedPetList(event.status);
      debugPrint(event.status);
      emit(PetsLoaded(petList: petList));
    });
  }

  Future<List<Pet>> fetchedPetList(String status) async {
    List<String> statusList = [status];
    List<Pet> petList = [];

    await Openapi()
        .getPetApi()
        .findPetsByStatus(status: BuiltList(statusList))
        .then((value) => {
              //debugPrint('pets are : $value'),
              petList.addAll(value.data!.asList()),
              //debugPrint('pet list : $petList'),
            });
    debugPrint('fetched pet list length ->${petList.length}');
    return petList;
  }
}
