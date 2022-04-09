// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
                Card(
                  color: Colors.lightBlue,
                  child: Icon(Icons.headphones),
                ),
                Card(
                  color: Color.fromARGB(255, 14, 53, 71),
                ),
                Card(
                  color: Color.fromARGB(255, 65, 147, 185),
                ),
              ],
            ),
          ),
          Container(
            color: Color.fromARGB(255, 42, 107, 182),
            width: MediaQuery.of(context).size.width,
            height: 300, //MediaQuery.of(context).size.height / 3,
          ),
        ],
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
}
