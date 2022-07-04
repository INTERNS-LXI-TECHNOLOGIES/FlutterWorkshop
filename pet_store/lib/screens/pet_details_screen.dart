import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:openapi/openapi.dart';

import '../widgets/image_decode_widget.dart';

class PetDetails extends StatelessWidget {
  final Pet pet;
  const PetDetails({Key? key, required this.pet}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Details'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2,
                decoration: const BoxDecoration(
                  color: Colors.lightBlue,
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(100),
                      bottomLeft: Radius.circular(100)),
                ),
                child: getImagenBase64(pet.photoUrls[0]),
              ),
            ),
            Container(
              // height: MediaQuery.of(context).size.height * .4,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 253, 253, 253)),
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      detailText(pet.name!, 40),
                      detailText(pet.status!.name, 15),

                      // crossAxisAlignment: CrossAxisAlignment.start,

                      detailText('more details', 30),
                      detailText('Type : ${pet.category!.name}', 20),
                      detailText('id   : ${pet.id}', 20),
                      //detailText(pet.tags![0] as String, 20)
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Text detailText(String value, double fSize) {
    return Text(
      value,
      style: TextStyle(
          color: Color.fromARGB(255, 3, 3, 3),
          fontSize: fSize,
          fontStyle: FontStyle.normal),
    );
  }
}
