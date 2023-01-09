import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dictionary/application/blocs/bloc/word_bloc.dart';
import 'package:flutter_dictionary/constants.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class HomeScreen extends StatelessWidget {
  final String title;
  HomeScreen({super.key, required this.title});

  TextEditingController wordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double kwidth = Get.width;

    double kheight = Get.height;
    debugPrint(
        'screen width => ${kwidth.toString()}  screen width => ${kheight.toString()}');
    return Scaffold(
      body: BlocBuilder<WordBloc, WordState>(
        builder: (context, state) {
          return SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  SizedBox(
                    height: kheight * .2,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Kred,
                          borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(30),
                              bottomRight: Radius.circular(30))),
                      child: Column(children: [
                        const SizedBox(
                          height: 20,
                        ),
                        //title text
                        Center(
                          child: Text(
                            title,
                            style: TextStyle(
                              color: kwhite,
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        //search field
                        SingleChildScrollView(
                          child: Container(
                            decoration: BoxDecoration(
                                color: kwhite,
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(20))),
                            height: kheight * .07,
                            width: kwidth * .8,
                            child: TextField(
                              controller: wordController,
                              onSubmitted: (value) {
                                debugPrint(value.toString());
                                value != null || value.isNotEmpty
                                    ? BlocProvider.of<WordBloc>(context)
                                        .add(WordAddEvent(word: value))
                                    : BlocProvider.of<WordBloc>(context)
                                        .add(WordAddEvent(word: 'empty'));
                              },
                            ),
                          ),
                        )
                      ]),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Container(
                      color: kwhite,
                      child: Container(
                        decoration: BoxDecoration(
                          color: kgrey,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(30)),
                        ),
                        height: 80.h,
                        width: kwidth,
                        child: BlocBuilder<WordBloc, WordState>(
                          builder: (context, state) {
                            if (state is WordLoadedState) {
                              return ListView.builder(
                                  itemCount: state.word.meanings.length,
                                  itemBuilder: ((context, index) => Container(
                                        height: 80.h,
                                        width: kwidth,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Container(
                                              height: 60.h,
                                              width: double.infinity,
                                              decoration:
                                                  BoxDecoration(color: kgreen),
                                              child: Column(
                                                children: [
                                                  //
                                                  dictionaryTexts(
                                                      'Definition',
                                                      state
                                                          .word
                                                          .meanings[index]
                                                          .definitions[index]
                                                          .definition
                                                          .toString(),
                                                      index),
                                                  //
                                                  dictionaryTexts(
                                                      'Synonym',
                                                      'hello'
                                                      // state
                                                      //         .word
                                                      //         .meanings[index]
                                                      //         .definitions[1]
                                                      //         .definition
                                                      //         .toString()
                                                      //         .isEmpty
                                                      //     ? ''
                                                      //     : state
                                                      //         .word
                                                      //         .meanings[index]
                                                      //         .antonyms[index]
                                                      //         .toString()
                                                      ,
                                                      index),
                                                  //dictionaryTexts(state, index),
                                                ],
                                              ),
                                            ),
                                            Text(
                                                'partOfSpeech =   ${state.word.meanings[index].partOfSpeech}'),
                                            Text(
                                                ' Definition = ${state.word.meanings[index].definitions[index].definition}'),
                                            Text(
                                                'synonyms =   ${state.word.meanings[index].synonyms}'),
                                          ],
                                        ),
                                      )));
                            } else if (state is WordLoadingState) {
                              return Text('loding state');
                            } else if (state is WordLoadErrorState) {
                              print(state.error);
                              return Text(state.error);
                            }
                            return const Center(child: Text('search a word'));
                          },
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  SizedBox dictionaryTexts(String head, String word, int index) {
    return SizedBox(
      height: 20.h,
      width: double.infinity,
      child: Column(
        children: [
          Center(
            child: Text(
              head,
              style: TextStyle(
                  color: kBlack, fontSize: 24, fontWeight: FontWeight.w400),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          //box for definiton
          Container(
            height: 10.h,
            width: double.infinity,
            decoration: BoxDecoration(color: kwhite),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                word,
                style: TextStyle(
                    color: kBlack, fontSize: 24, fontWeight: FontWeight.w400),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
