// ignore_for_file: prefer_const_constructors

import 'package:dio/src/response.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pet_store/widgets/bottombar_widget.dart';
import 'package:pet_store/widgets/maincard_widget.dart';

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
      body: MainCard(),
      // body: Column(
      //   children: [
      //     searchBox(context),
      //     Container(
      //       color: Color.fromARGB(255, 21, 101, 167),
      //       width: MediaQuery.of(context).size.width * 2,
      //       height: MediaQuery.of(context).size.height / 5,
      //       child: MainCard(),
      //     ),
      //     SizedBox(
      //       height: 100,
      //       width: 550,
      //       //child: MainCard(),
      //       // Row(
      //       //   mainAxisAlignment: MainAxisAlignment.start,
      //       //   crossAxisAlignment: CrossAxisAlignment.start,
      //       //   children: const [
      //       //     // _sampleMethod(),
      //       //     //MainCard(),
      //       //   ],
      //       // ),
      //     ),
      //     // Container(
      //     //   color: Color.fromARGB(255, 42, 107, 182),
      //     //   width: MediaQuery.of(context).size.width,
      //     //   height: 300, //MediaQuery.of(context).size.height / 3,
      //     //   // child: _petList(),
      //     // ),
      //   ],
      // ),
      bottomNavigationBar: BottombarWidgets(),
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
