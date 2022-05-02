import 'package:dio/src/response.dart';
import 'package:built_collection/src/list.dart';
import 'package:flutter/material.dart';
import 'package:openapi/openapi.dart';
import 'package:pet_store/model/pets.dart';

class MainCard extends StatelessWidget {
  MainCard({Key? key}) : super(key: key);
  var petList = Pets().petList();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      height: 100,
      child: FutureBuilder(
        future: Pets().petList(),
        builder: (context, AsyncSnapshot snapshot) {
          if (!snapshot.hasData) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return ListView.builder(
              itemCount: 10, //snapshot,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return Text('${snapshot.data[index].title}');
              },
            );
          }
        },
      ),
    );
  }
}
