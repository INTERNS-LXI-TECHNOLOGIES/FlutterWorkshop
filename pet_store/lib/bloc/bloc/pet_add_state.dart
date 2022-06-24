part of 'pet_add_bloc.dart';

@immutable
abstract class PetAddState {}

class PetAddInitial extends PetAddState {}

class PetAddedState extends PetAddState {}

class PetAddNoValueState extends PetAddState {
  String noValueMsg;
  PetAddNoValueState(this.noValueMsg);
}

// ignore: must_be_immutable
class PetAddErrorState extends PetAddState {
  String errorMsg;
  PetAddErrorState(this.errorMsg);
}
