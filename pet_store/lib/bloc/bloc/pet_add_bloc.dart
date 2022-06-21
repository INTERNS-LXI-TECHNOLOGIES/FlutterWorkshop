import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:openapi/openapi.dart';

part 'pet_add_event.dart';
part 'pet_add_state.dart';

class PetAddBloc extends Bloc<PetAddEvent, PetAddState> {
  PetAddBloc() : super(PetAddInitial()) {
    on<AddPetByTextForm>((event, emit) async {
      PetBuilder petBuilder = PetBuilder();
      CategoryBuilder cateBuilder = CategoryBuilder();
      cateBuilder.name = event.petName;
      petBuilder.name = event.cateName;
      petBuilder.status = PetStatusEnum.available;
      petBuilder.category = cateBuilder;
      Pet newPet = petBuilder.build();
      await Openapi().getPetApi().addPet(
            body: newPet,
          );
      emit(PetAddedState());
    });
  }
}
