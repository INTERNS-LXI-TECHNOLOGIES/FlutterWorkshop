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
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
        ),
        title: Text('petstore'),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart)),
          IconButton(
            onPressed: () {},
            icon: Icon(CupertinoIcons.profile_circled),
          )
        ],
      ),
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
