part of 'pets_bloc.dart';

class PetsState {
  List? petList = [];
  PetsState({required this.petList});
}

class PetsInitial extends PetsState {
  PetsInitial({required petList}) : super(petList: null);
}
