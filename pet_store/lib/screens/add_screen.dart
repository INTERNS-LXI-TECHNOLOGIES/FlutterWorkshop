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
            const SizedBox(
              height: 30,
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: BlocBuilder<PetAddBloc, PetAddState>(
                builder: (context, state) {
                  if (state is PetAddInitial) {
                    return TextFormField(
                      keyboardType: TextInputType.name,
                      controller: nameController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Pet Name',
                      ),
                    );
                  } else {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                },
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: BlocBuilder<PetAddBloc, PetAddState>(
                builder: (context, state) {
                  if (state is PetAddInitial) {
                    return TextFormField(
                      keyboardType: TextInputType.name,
                      controller: cateController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Pet category',
                      ),
                    );
                  } else {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                },
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {
                      BlocProvider.of<PetAddBloc>(context).add(AddPetByTextForm(
                          nameController.text, cateController.text));
                      // addPetByTextForm(
                      //    nameController.text, cateController.text);
                    },
                    child: const Text('add+')),
                ElevatedButton(
                    onPressed: () {
                      //addPetByTextForm(nameController.text, cateController.text);
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
