import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import 'package:openapi/openapi.dart';

part 'pet_add_event.dart';
part 'pet_add_state.dart';

class PetAddBloc extends Bloc<PetAddEvent, PetAddState> {
  PetAddBloc() : super(const PetAddInitial(msg: 'add your pet [initial]')) {
    on<AddPetByTextForm>(
      (event, emit) async {
        try {
          if (event.cateName.isNotEmpty && event.petName.isNotEmpty) {
            PetBuilder petBuilder = PetBuilder();
            CategoryBuilder cateBuilder = CategoryBuilder();
            cateBuilder.name = event.petName;
            petBuilder.name = event.cateName;
            petBuilder.status = PetStatusEnum.available;
            petBuilder.category = cateBuilder;
            Pet newPet = petBuilder.build();
            final response = await Openapi().getPetApi().addPet(
                  body: newPet,
                );
            emit(const PetAddedState(msg: 'pet added sucessfully'));
            debugPrint("Response=> ${response.toString()}");
            await Future.delayed(const Duration(seconds: 3));
            emit(const PetAddInitial(msg: 'add your pet'));
          } else {
            emit(const PetAddNoValueState(msg: 'enter name and category'));
            await Future.delayed(const Duration(seconds: 3));
            emit(const PetAddInitial(msg: 'add your pet'));
          }
        } on Exception {
          debugPrint(Exception().toString());
          emit(const PetAddErrorState(msg: 'something went wrong'));
          await Future.delayed(const Duration(seconds: 3));
          emit(const PetAddInitial(msg: 'add your pet'));
        }
      },
    );
  }
}
