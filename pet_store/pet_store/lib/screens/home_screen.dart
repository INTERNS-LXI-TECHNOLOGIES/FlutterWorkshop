// ignore_for_file: prefer_const_constructors

import 'package:dio/src/response.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pet_store/screens/add_screen.dart';
import 'package:pet_store/screens/mypet_screen.dart';
import 'package:pet_store/screens/pets_screen.dart';
import 'package:pet_store/widgets/bottombar_widget.dart';
import 'package:pet_store/widgets/maincard_widget.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [Text('petsss'), searchBox(context)],
      ),
    );
  }

  //sizedbox for textfield
  SizedBox searchBox(BuildContext context) {
    return SizedBox(
      height: 50,
      width: MediaQuery.of(context).size.width,
      child: Card(
        color: Color.fromARGB(255, 36, 162, 240),
        child: TextField(
          decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              labelText: 'search',
              fillColor: Colors.blueAccent
              //suffixIcon: Icons(iconsse),
              ),
        ),
      ),
    );
  }

  //Future<Response<BuiltList<Pet>>>

}
