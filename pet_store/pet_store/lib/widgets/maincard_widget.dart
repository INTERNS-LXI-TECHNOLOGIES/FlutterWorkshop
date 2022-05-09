import 'package:built_collection/built_collection.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:openapi/openapi.dart';
import 'package:pet_store/model/pets.dart';

class MainCard extends StatefulWidget {
  MainCard({Key? key}) : super(key: key);

  @override
  State<MainCard> createState() => _MainCardState();
}

class _MainCardState extends State<MainCard> {
  // Future<Response<BuiltList<Pet>>> petsResponse() async {

  @override
  void initState() {
    // TODO: implement initState
    petList();
    super.initState();
  }

  final List<String> statusList = ["pending", "available"];

  Future<Response<BuiltList<Pet>>> petList() {
    Future<Response<BuiltList<Pet>>> _petList = Openapi()
        .getPetApi()
        .findPetsByStatus(status: BuiltList<String>(statusList));
    _petList.then((value) => debugPrint('result : $value'));
    return _petList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: FutureBuilder(
          future: petList(),
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return const Center(child: CircularProgressIndicator());
            } else {
              return crateList(snapshot);
            }
          },
        ),
      ),
    );
  }

  ListView crateList(AsyncSnapshot<Object?> snapshot) {
    return ListView.builder(
        itemCount: 15,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) => const ListTile(
              title: Text('_'),
            ));
  }
}
