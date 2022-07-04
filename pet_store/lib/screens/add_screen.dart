import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/pet_add/pet_add_bloc.dart';
import '../widgets/caps_text.dart';

class AddScreen extends StatelessWidget {
  AddScreen({Key? key}) : super(key: key);
  TextEditingController nameController = TextEditingController();
  TextEditingController cateController = TextEditingController();

  bool isPetName = false;
  bool isCateName = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 131, 203, 203),
      appBar: AppBar(
        title: Text(
          CapsText(text: 'add your pet'),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.all(10),
            child: TextFormField(
              onChanged: (value) {
                if (value.isNotEmpty) {
                  isPetName = true;
                } else {
                  isPetName = false;
                }
              },
              keyboardType: TextInputType.name,
              controller: nameController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Pet Name',
              ),
            ),
          ),
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.all(10),
            child: TextFormField(
              onChanged: (value) {
                if (value.isNotEmpty) {
                  isCateName = true;
                } else {
                  isCateName == false;
                }
              },
              keyboardType: TextInputType.name,
              controller: cateController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Pet Category',
              ),
            ),
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CupertinoButton(
                color: Colors.blue,
                onPressed: () async {
                  BlocProvider.of<PetAddBloc>(context).add(
                    AddPetByTextForm(nameController.text, cateController.text),
                  );

                  await Future.delayed(const Duration(seconds: 5));
                  nameController.clear();
                  cateController.clear();
                },
                child: Text(
                  CapsText(text: 'add+'),
                ),
              ),
              CupertinoButton(
                  color: Colors.blue,
                  onPressed: () {
                    nameController.clear();
                    cateController.clear();
                  },
                  child: Text(
                    CapsText(text: 'cancel'),
                  )),
            ],
          ),
          const SizedBox(height: 15),
          BlocBuilder<PetAddBloc, PetAddState>(
            builder: (context, state) {
              if (state is PetAddNoValueState) {
                return SizedBox(
                  height: 20,
                  child: Text(state.msg),
                );
              } else if (state is PetAddErrorState) {
                return SizedBox(
                  height: 20,
                  child: Text(state.msg),
                );
              } else if (state is PetAddedState) {
                return SizedBox(
                  height: 20,
                  child: Text(state.msg),
                );
              } else if (state is PetAddInitial) {
                return SizedBox(
                  height: 20,
                  child: Text(state.msg),
                );
              } else {
                return SizedBox(
                  height: 20,
                  child: Text(
                    CapsText(text: 'bad state'),
                  ),
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
