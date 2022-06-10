part of 'pets_bloc.dart';

class PetsState {
  List<Pet> petList = [];

  PetsState({required this.petList});
}

class PetsInitial extends PetsState {
  PetsInitial({required petList}) : super(petList: []);
}

class PetsLoading extends PetsState {
  PetsLoading({required List<Pet> petList}) : super(petList: []);
}

class PetsLoaded extends PetsState {
  PetsLoaded({required List<Pet> petList}) : super(petList: petList);
}
