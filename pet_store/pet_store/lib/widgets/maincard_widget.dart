import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pet_store/pet_list/pets_bloc.dart';
import 'package:pet_store/screens/pet_details_screen.dart';

class MainCard extends StatelessWidget {
  MainCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: _body(context),
    );
  }

  _body(context) {
    BlocProvider.of<PetsBloc>(context).add(ShowList());
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
                        title: Text('${state.petList[i].name}'),
                        leading: CircleAvatar(
                          child:
                              getImagenBase64(state.petList[i].photoUrls.first),
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

  Widget getImagenBase64(String imagen) {
    var _imageBase64 = imagen;
    //const Base64Codec base64 = Base64Codec();
    if (_imageBase64 == null) {
      return const Center(child: CircularProgressIndicator());
    } else if (_imageBase64.length % 4 > 0) {
      _imageBase64 += '=' * (4 - _imageBase64.length % 4);
      debugPrint(_imageBase64);
      var bytes = const Base64Decoder().convert(_imageBase64);
      debugPrint('$bytes');
      return Image.memory(
        bytes,
        //width: 20,
        fit: BoxFit.fitWidth,
      );
    } else if (_imageBase64.length > 100) {
      var bytes = const Base64Decoder().convert(_imageBase64);
      debugPrint('$bytes');
      return Image.memory(
        bytes,
        //width: 20,
        fit: BoxFit.fitWidth,
      );
    } else {
      return const Image(image: AssetImage('images/cat.jpg'));
    }
  }
}
