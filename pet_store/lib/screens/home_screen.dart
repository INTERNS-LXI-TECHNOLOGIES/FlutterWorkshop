// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          searchBox(context)
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
        color: Color.fromARGB(255, 19, 229, 208),
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
