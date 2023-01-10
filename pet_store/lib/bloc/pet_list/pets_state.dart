part of 'pets_bloc.dart';

abstract class PetsState {
  List<Pet> petList = [];

  PetsState({required this.petList});
}

class PetsInitial extends PetsState {
  PetsInitial({required petList}) : super(petList: []);
}

// class PetsLoading extends PetsState {
//   PetsLoading({required petList}) : super(petList: []);
// }

class PetsLoaded extends PetsState {
  PetsLoaded({required List<Pet> petList}) : super(petList: petList);
}

class SearchLoaded extends PetsState {
  SearchLoaded({required List<Pet> petList}) : super(petList: petList);
}
