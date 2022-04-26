// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:html';
import 'dart:js';

import 'package:dio/src/response.dart';
import 'package:built_collection/src/list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:openapi/openapi.dart';
import 'package:pet_store/model/pets.dart';
import 'package:pet_store/widgets/bottombar_widget.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  TextEditingController searchController = TextEditingController();
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
      body: Column(
        children: [
          searchBox(context),
          Container(
            color: Color.fromARGB(255, 21, 101, 167),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 5,
          ),
          SizedBox(
            height: 150,
            width: 150,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // _sampleMethod(),
              ],
            ),
          ),
          // Container(
          //   color: Color.fromARGB(255, 42, 107, 182),
          //   width: MediaQuery.of(context).size.width,
          //   height: 300, //MediaQuery.of(context).size.height / 3,
          //   // child: _petList(),
          // ),
        ],
      ),
      bottomNavigationBar: BottombarWidgets(),
    );
  }

  // Widget _petList() {
  //   List<String> sampleList = [
  //     'a',
  //     'b',
  //     'c',
  //     'd',
  //     'e',
  //     'f',
  //     'g',
  //     'h',
  //     'i',
  //     'j'
  //   ];

  //   return ListView.builder(
  //     scrollDirection: Axis.horizontal,
  //     itemCount: 10,
  //     itemBuilder: (context, i) => ListTile(
  //       title: Text('abc'),
  //     ),
  //   );
  // }

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
  _sampleMethod() async {
    var pet = 'abs';

    // Response<BuiltList<Pet>>petList= await Openapi().getPetApi().findPetsByStatus(status:);
    Response<Pet> petDetails =
        await Openapi().getPetApi().getPetById(petId: 7600);
    String petName = petDetails.data!.name;
    // debugPrintThrottled('$petList');
    debugPrintThrottled('$petDetails');
    debugPrintThrottled('pet name=$petName');
    // return petList;
  }
}
