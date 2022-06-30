// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:openapi/openapi.dart';
import 'package:pet_store/screens/add_screen.dart';
import 'package:pet_store/screens/pet_details_screen.dart';

import '../bloc/pet_list/pets_bloc.dart';
import '../widgets/image_decode_widget.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('petstore'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // SizedBox(
            //   height: 50,
            // ),
            searchBox(context),
            searchList(),
          ],
        ),
      ),
    );
  }

  BlocBuilder<PetsBloc, PetsState> searchList() {
    return BlocBuilder<PetsBloc, PetsState>(builder: (context, state) {
      if (state.petList.isNotEmpty) {
        return ListView.builder(
          shrinkWrap: true,
          itemCount: state.petList.length,
          itemBuilder: (context, i) => ListTile(
            title: Text(state.petList[i].name!),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PetDetails(pet: state.petList[i]),
                ),
              );
            },
          ),
        );
      } else {
        return const SizedBox.shrink();
      }
    });
  }

  //sizedbox for textfield
  Container searchBox(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(color: Colors.blue),
      child: Card(
        color: Color.fromARGB(255, 248, 249, 249),
        child: TextField(
          controller: searchController,
          decoration: const InputDecoration(
              border: UnderlineInputBorder(
                borderSide: BorderSide(width: 500),
              ),
              // labelText: 'search',
              hintText: 'search',
              hintStyle: TextStyle(),
              fillColor: Colors.blueAccent
              //suffixIcon: Icons(iconsse),
              ),
          onChanged: (value) {
            BlocProvider.of<PetsBloc>(context)
                .add(SearchPet('available', searchController.text));
          },
        ),
      ),
    );
  }
}
