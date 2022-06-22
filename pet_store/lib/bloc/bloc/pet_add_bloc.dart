import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:openapi/openapi.dart';

part 'pet_add_event.dart';
part 'pet_add_state.dart';

class PetAddBloc extends Bloc<PetAddEvent, PetAddState> {
  PetAddBloc() : super(PetAddInitial()) {
    on<AddPetByTextForm>((event, emit) async {
      try {
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

        debugPrint("Response=> ${response.toString()}");

        emit(PetAddInitial());
      } catch (e) {
        debugPrint(e.toString());
        emit(PetAddErrorState());
      }
    });
  }
}
