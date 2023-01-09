part of 'word_bloc.dart';

@immutable
abstract class WordState {}

class WordInitial extends WordState {}

class WordLoadingState extends WordState {}

class WordLoadedState extends WordState {
  late Word word;
  WordLoadedState({required this.word});
}

class WordLoadErrorState extends WordState {
  late String error;
  WordLoadErrorState({required this.error});
}
