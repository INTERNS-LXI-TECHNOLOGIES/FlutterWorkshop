part of 'pets_bloc.dart';

@immutable
abstract class PetsEvent {}

class AvailableList extends PetsEvent {}

class PendingList extends PetsEvent {}

class SoldList extends PetsEvent {}
