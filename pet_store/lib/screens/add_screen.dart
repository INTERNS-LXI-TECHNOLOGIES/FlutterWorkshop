import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart';
import 'package:openapi/openapi.dart';
import 'package:pet_store/bloc/bloc/pet_add_bloc.dart';
import 'package:pet_store/widgets/add_pet_textform.dart';

class AddScreen extends StatelessWidget {
  AddScreen({Key? key}) : super(key: key);
  TextEditingController nameController = TextEditingController();
  TextEditingController cateController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey();
  bool isPetName = false;
  bool isCateName = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("add your pet"),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextFormField(
                onChanged: (value) {
                  isPetName = true;
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
                  isCateName = true;
                },
                keyboardType: TextInputType.name,
                controller: cateController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Pet category',
                ),
              ),
            ),
            // BlocBuilder<PetAddBloc, PetAddState>(
            //   builder: (context, state) {
            //     if (State is PetAddInitial) {
            //       const snackBar = SnackBar(
            //         backgroundColor: Colors.blue,
            //         content: Text('pet added successfully'),
            //       );
            //       ScaffoldMessenger.of(context).showSnackBar(snackBar);
            //       nameController.clear();
            //       cateController.clear();
            //     } else if (State is PetAddErrorState) {
            //       if (State is PetAddErrorState) {
            //         const snackBar = SnackBar(
            //           backgroundColor: Colors.red,
            //           content: Text('something went wrong'),
            //         );
            //         ScaffoldMessenger.of(context).showSnackBar(snackBar);
            //         nameController.clear();
            //         cateController.clear();
            //       }
            //     }
            //     return const SizedBox(height: 20);
            //   },
            // ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CupertinoButton(
                  onPressed: () {
                    if (isCateName == true && isPetName == true) {
                      BlocProvider.of<PetAddBloc>(context).add(
                        AddPetByTextForm(
                            nameController.text, cateController.text),
                      );

                      const snackBar = SnackBar(
                        backgroundColor: Colors.blue,
                        content: Text('pet added successfully'),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      nameController.clear();
                      cateController.clear();
                      // if (State is PetAddErrorState) {
                      //   const snackBar = SnackBar(
                      //     backgroundColor: Colors.red,
                      //     content: Text('something went wrong'),
                      //   );
                      //   ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      //   nameController.clear();
                      //   cateController.clear();
                      // }
                    }
                  },
                  child: const Text('add+'),
                ),
                CupertinoButton(
                    onPressed: () {
                      nameController.clear();
                      cateController.clear();
                    },
                    child: const Text('cancel')),
              ],
            )
          ],
        ),
      ),
    );
  }
}
