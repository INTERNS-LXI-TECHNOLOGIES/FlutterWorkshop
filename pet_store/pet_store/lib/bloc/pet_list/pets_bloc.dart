import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:openapi/openapi.dart';

part 'pets_event.dart';
part 'pets_state.dart';

class PetsBloc extends Bloc<PetsEvent, PetsState> {
  //PetsBloc();

  PetsBloc() : super(PetsInitial(petList: [])) {
    on<AvailableList>((event, emit) async {
      List<Pet> petList = await fetchedPetList('available');
      emit(PetsState(petList: petList));
    });
    on<PendingList>((event, emit) async {
      List<Pet> petList = await fetchedPetList('pending');
      emit(PetsState(petList: petList));
    });
    on<SoldList>((event, emit) async {
      List<Pet> petList = await fetchedPetList('sold');
      emit(PetsState(petList: petList));
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
    debugPrint('length of list ->${petList.length}');
    return petList;
  }
}
