part of 'word_bloc.dart';

@immutable
abstract class WordEvent {}

class WordAddEvent extends WordEvent {
  late String word;
  WordAddEvent({required this.word});
}
