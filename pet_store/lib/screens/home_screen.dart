// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pet_store/screens/pet_details_screen.dart';

import '../bloc/pet_list/pets_bloc.dart';

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
        actions: [
          IconButton(
              onPressed: () {
                showSearch(context: context, delegate: CustumSearchhDelegate());
              },
              icon: Icon(Icons.search))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [],
        ),
      ),
    );
  }

  //sizedbox for textfield

}

class CustumSearchhDelegate extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = '';
          },
          icon: Icon(Icons.clear))
    ];
    //return null;
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: Icon(Icons.arrow_back));

    //return null;
  }

  @override
  Widget buildResults(BuildContext context) {
    BlocProvider.of<PetsBloc>(context).add(SearchPet('available', query));
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

  @override
  Widget buildSuggestions(BuildContext context) {
    BlocProvider.of<PetsBloc>(context).add(SearchPet('available', query));
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
}
