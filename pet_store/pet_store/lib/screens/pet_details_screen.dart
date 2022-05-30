import 'package:flutter/material.dart';
import 'package:openapi/openapi.dart';

class PetDetails extends StatelessWidget {
  //final Pet pet = new Pet();
  final Pet pet;
  const PetDetails({Key? key, required this.pet}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width / 2,
            decoration: const BoxDecoration(
              color: Colors.lightBlue,
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(20)),
            ),
            child: Text(pet.name),
          )
        ],
      ),
    );
  }
}
