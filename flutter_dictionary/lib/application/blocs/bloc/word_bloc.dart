import 'package:bloc/bloc.dart';
import 'package:flutter_dictionary/data/repocitory/word_repo.dart';
import 'package:meta/meta.dart';

import '../../../data/model/word.dart';

part 'word_event.dart';
part 'word_state.dart';

class WordBloc extends Bloc<WordEvent, WordState> {
  final _wordRepo = WordRepo();
  WordBloc() : super(WordInitial()) {
    on<WordAddEvent>((event, emit) async {
      emit(WordLoadingState());
      try {
        final Word word = await _wordRepo.getMeaning(event.word);
        emit(WordLoadedState(word: word));
      } catch (e) {
        emit(WordLoadErrorState(error: e.toString()));
      }
    });
  }
}
