import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dictionary/application/blocs/bloc/word_bloc.dart';
import 'package:flutter_dictionary/constants.dart';
import 'package:flutter_dictionary/presentation/message_screen.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;
import 'package:speech_to_text/speech_to_text.dart';

class HomeScreen extends StatefulWidget {
  final String title;
  HomeScreen({super.key, required this.title});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final FlutterTts flutterTts = FlutterTts();

  TextEditingController wordController = TextEditingController();
  stt.SpeechToText _speech = SpeechToText();
  bool _isListening = false;
  String _textSpeech = 'speak';

  @override
  Widget build(BuildContext context) {
    double kwidth = Get.width;

    double kheight = Get.height;
    debugPrint(
        'screen width => ${kwidth.toString()}  screen height => ${kheight.toString()}');
    return Scaffold(
      // floatingActionButton: FloatingActionButton(onPressed: () {
      //   Get.to(() => MessageScreen());
      // }),
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
                          borderRadius:
                              const BorderRadius.all(Radius.circular(30))),
                      child: Column(children: [
                        SizedBox(
                          height: 1.w,
                        ),
                        //title text
                        Center(
                          child: Text(
                            widget.title,
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
                                  border: InputBorder.none,
                                  suffixIcon: IconButton(
                                    splashColor: kgrey,
                                    icon: const Icon(Icons.mic),
                                    onPressed: () {
                                      debugPrint("mic on");
                                      // speak(wordController.text);
                                      onListen();
                                    },
                                  ),
                                  hintText: 'Search here',
                                  hintStyle: const TextStyle(fontSize: 18),
                                  prefixIcon: const Icon(Icons.search)),
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
                          if (state is WordLoadedState) {
                            return ListView.builder(
                              itemCount:
                                  state.word.meanings[0].definitions.length,
                              itemBuilder: ((context, index) => Column(
                                    children: [
                                      ListTile(
                                        minLeadingWidth: 10,
                                        minVerticalPadding: 20,
                                        title: Text(
                                            'Definition: ${state.word.meanings[0].definitions[index].definition}.',
                                            style: TextStyle(
                                                color: kBlack,
                                                fontSize: 22,
                                                fontWeight: FontWeight.w500)),
                                        subtitle: Text(
                                            'eg: ${state.word.meanings[0].definitions[index].example}.',
                                            style: TextStyle(
                                                color: kBlack,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w300)),
                                        trailing: IconButton(
                                            onPressed: () {
                                              speak(state.word.meanings[0]
                                                  .definitions[index].definition
                                                  .toString());
                                            },
                                            icon: const Icon(Icons.volume_up)),
                                      ),
                                    ],
                                  )),
                            );
                          } else if (state is WordLoadingState) {
                            return const Center(
                                child: CircularProgressIndicator(
                              semanticsLabel: 'Loading',
                            ));
                          } else if (state is WordLoadErrorState) {
                            debugPrint('error state');
                            return const Center(child: Text('No data'));
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

  void speak(String word) async {
    await flutterTts.setLanguage('en-US');
    await flutterTts.setPitch(1);
    await flutterTts.speak(word);
  }

  void onListen() async {
    bool available = await _speech.initialize(
        onStatus: (val) => debugPrint('onStatus: $val'),
        onError: (val) => debugPrint('onError: $val'));

    if (!_isListening) {
      if (available) {
        setState(() {
          _isListening = false;
          _speech.listen(
            onResult: (val) => setState(() {
              _textSpeech = val.recognizedWords;
              wordController.text = val.recognizedWords;
            }),
          );
        });
      }
    } else {
      setState(() {
        _isListening = false;
        _speech.stop();
      });
    }
  }
}
