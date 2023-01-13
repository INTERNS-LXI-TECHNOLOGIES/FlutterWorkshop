import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dictionary/application/blocs/bloc/word_bloc.dart';
import 'package:flutter_dictionary/constants.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class HomeScreen extends StatelessWidget {
  final String title;
  HomeScreen({super.key, required this.title});

  final FlutterTts flutterTts = FlutterTts();

  TextEditingController wordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double kwidth = Get.width;

    double kheight = Get.height;
    debugPrint(
        'screen width => ${kwidth.toString()}  screen height => ${kheight.toString()}');
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
                        SizedBox(
                          height: 1.w,
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
                        SizedBox(
                          height: 2.w,
                        ),
                        //search field
                        Container(
                          decoration: BoxDecoration(
                              color: kwhite,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(20))),
                          height: kheight * .07,
                          width: kwidth * .8,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: TextField(
                              style: const TextStyle(fontSize: 20),
                              decoration: InputDecoration(
                                  suffixIcon: IconButton(
                                    splashColor: kgrey,
                                    icon: Icon(Icons.volume_up),
                                    onPressed: () {
                                      debugPrint("mic on");
                                      speak(wordController.text);
                                    },
                                  ),
                                  hintText: 'Search here',
                                  hintStyle: TextStyle(fontSize: 18),
                                  prefixIcon: Icon(Icons.search)),
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
                      decoration: BoxDecoration(
                        color: kgrey,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(30)),
                      ),
                      height: 80.h,
                      width: kwidth,
                      child: BlocBuilder<WordBloc, WordState>(
                        builder: (context, state) {
                          // var count=state.word.meanings[0].definitions.length;
                          //  debugPrint( )
                          if (state is WordLoadedState) {
                            return ListView.builder(
                                itemCount:
                                    state.word.meanings[0].synonyms.length,
                                // state.word.meanings[0].definitions.length,

                                itemBuilder: ((context, index) => Flexible(
                                      child: ListTile(
                                        title: Text(state
                                            .word.meanings[0].synonyms[index]),
                                      ),
                                    )));
                          } else if (state is WordLoadingState) {
                            return const Text('loding state');
                          } else if (state is WordLoadErrorState) {
                            print(state.error);
                            return Text(state.error);
                          }
                          return const Center(child: Text('search a word'));
                        },
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
              maxLines: 2,
              overflow: TextOverflow.clip,
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
                maxLines: 2,
                overflow: TextOverflow.clip,
                style: TextStyle(
                    color: kBlack, fontSize: 24, fontWeight: FontWeight.w400),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void speak(String word) async {
    await flutterTts.setLanguage('en-US');
    await flutterTts.setPitch(1);
    await flutterTts.speak(word);
  }
}
