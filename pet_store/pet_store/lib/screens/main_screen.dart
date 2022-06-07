import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pet_store/widgets/bottombar_widget.dart';

import 'add_screen.dart';
import 'home_screen.dart';
import 'mypet_screen.dart';
import 'pets_screen.dart';

class MainScreen extends StatelessWidget {
  MainScreen({Key? key}) : super(key: key);
  final _screens = [
    HomeScreen(),
    AddScreen(),
    const MyPetScreen(),
    const PetsScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ValueListenableBuilder(
            valueListenable: indexNotifier,
            builder: (context, int index, _) {
              return _screens[index];
            }),
      ),
      bottomNavigationBar: const BottombarWidgets(),
    );
  }
}
