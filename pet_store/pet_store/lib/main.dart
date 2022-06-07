import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:pet_store/screens/home_screen.dart';
import 'package:pet_store/screens/main_screen.dart';
import 'package:pet_store/screens/splash_screen.dart';

import 'bloc/pet_list/pets_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PetsBloc('sold'),
      child: MaterialApp(
        theme: ThemeData(primaryColor: Colors.blue[700]),
        debugShowCheckedModeBanner: false,
        home: const SplashScreen(),
      ),
    );
  }
}
