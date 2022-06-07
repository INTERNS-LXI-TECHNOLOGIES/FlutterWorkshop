import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pet_store/bloc/pet_list/pets_bloc.dart';

import 'package:pet_store/screens/pet_details_screen.dart';

import 'image_decode_widget.dart';

class MainCard extends StatelessWidget {
  MainCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: _body(context),
    );
  }

  petList(context) {
    BlocProvider.of<PetsBloc>(context).add(ShowList());
    PetsBloc('pending');
  }

  _body(context) {
    BlocProvider.of<PetsBloc>(context).add(ShowList());
    PetsBloc('pending');
    return Column(
      children: [
        BlocBuilder<PetsBloc, PetsState>(
          builder: (context, state) {
            // debugPrint('bloc return list=>${petList}');
            debugPrint('bloc return list length=>${state.petList.length}');

            return Expanded(
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: state.petList.length,
                  itemBuilder: (context, i) => ListTile(
                        title: state.petList[i].name!.isNotEmpty
                            ? Text(state.petList[i].name!)
                            : const Text('no name'),
                        leading: CircleAvatar(
                          child:
                              //Text(state.petList[i].status!.name)

                              getImagenBase64(
                                  petPhotos(state.petList[i].photoUrls)[0]),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  PetDetails(pet: state.petList[i]),
                            ),
                          );
                        },
                      )

                  //getImagenBase64(state.petList[i].photoUrls.first),

                  ),
            );
          },
        )
      ],
    );
  }

  List<String> petPhotos(BuiltList<String> photos) {
    List<String> photosUrl = [];
    photosUrl.addAll(photos);
    return photosUrl;
  }
}
