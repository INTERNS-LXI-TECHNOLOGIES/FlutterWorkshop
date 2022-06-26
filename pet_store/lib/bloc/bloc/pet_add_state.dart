part of 'pet_add_bloc.dart';

@immutable
abstract class PetAddState {
  final String msg;
  const PetAddState({required this.msg});
}

class PetAddInitial extends PetAddState {
  const PetAddInitial({required String msg}) : super(msg: msg);
}

class PetAddedState extends PetAddState {
  const PetAddedState({required String msg}) : super(msg: msg);
}

// ignore: must_be_immutable
class PetAddNoValueState extends PetAddState {
  const PetAddNoValueState({required String msg}) : super(msg: msg);
}

// ignore: must_be_immutable
class PetAddErrorState extends PetAddState {
  const PetAddErrorState({required String msg}) : super(msg: msg);
}
