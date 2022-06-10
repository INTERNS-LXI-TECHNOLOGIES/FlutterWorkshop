part of 'pets_bloc.dart';

abstract class PetsEvent {}

class LoadPetsByStatus extends PetsEvent {
  final String status;

  LoadPetsByStatus(this.status);
}
