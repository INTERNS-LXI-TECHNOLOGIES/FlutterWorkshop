part of 'pets_bloc.dart';

abstract class PetsEvent {}

class LoadPetsByStatus extends PetsEvent {
  final String status;

  LoadPetsByStatus(this.status);
}

class SearchPet extends PetsEvent {
  final String status;
  final String onValue;

  SearchPet(this.status, this.onValue);
}
