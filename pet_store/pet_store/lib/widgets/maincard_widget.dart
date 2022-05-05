import 'package:built_collection/built_collection.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:openapi/openapi.dart';
import 'package:pet_store/model/pets.dart';

class MainCard extends StatelessWidget {
  const MainCard({Key? key}) : super(key: key);
  // Future<Response<BuiltList<Pet>>> petList = Pets().petList();
  // debugprint('petlist - $petList');

  Future<Response<BuiltList<Pet>>> petsResponse() async {
    Future<Response<BuiltList<Pet>>> _petList =
        (await Pets().petList()) as Future<Response<BuiltList<Pet>>>;
    return _petList;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: petsResponse(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const Center(child: CircularProgressIndicator());
        } else {
          return ListView.builder(
              itemCount: 20,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) => const ListTile(
                    title: Text('122'),
                  ));
        }
      },
    );
  }
}
