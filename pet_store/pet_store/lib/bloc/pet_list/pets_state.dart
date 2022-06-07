part of 'pets_bloc.dart';

class PetsState {
  List<Pet> petList = [];

  PetsState({required this.petList});
}

class PetsInitial extends PetsState {
  PetsInitial({required petList}) : super(petList: []);
}
