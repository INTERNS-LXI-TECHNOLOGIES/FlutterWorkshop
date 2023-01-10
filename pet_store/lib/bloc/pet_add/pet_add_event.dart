part of 'pet_add_bloc.dart';

@immutable
abstract class PetAddEvent {}

class AddPetByTextForm extends PetAddEvent {
  final String petName;
  final String cateName;
  AddPetByTextForm(this.petName, this.cateName);
}
