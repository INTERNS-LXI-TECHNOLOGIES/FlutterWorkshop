import 'package:bloc/bloc.dart';
import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:openapi/openapi.dart';

part 'pets_event.dart';
part 'pets_state.dart';

class PetsBloc extends Bloc<PetsEvent, PetsState> {
  PetsBloc() : super(PetsInitial(petList: null)) {
    on<ShowList>((event, emit) async {
      List<String> statusList = ['available'];
      //List<Pet>
      final petList = [];
      await Openapi()
          .getPetApi()
          .findPetsByStatus(status: BuiltList(statusList))
          .then((value) => {
                //debugPrint('pets are : $value'),
                petList.addAll(value.data!.asList()),
                //debugPrint('pet list : $petList'),
              });
      return emit(PetsState(petList: petList));
    });
  }
}
