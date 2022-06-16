import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:openapi/openapi.dart';
import 'package:pet_store/widgets/add_pet_textform.dart';

class AddScreen extends StatelessWidget {
  AddScreen({Key? key}) : super(key: key);
  TextEditingController nameController = TextEditingController();
  TextEditingController cateController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("add your pet"),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: nameController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Pet Name',
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: cateController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Pet category',
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          TextButton(
              onPressed: () {
                addPetByTextForm(
                    nameController as String, cateController as String);
              },
              child: const Text('add'))
        ],
      ),
    );
  }
}
