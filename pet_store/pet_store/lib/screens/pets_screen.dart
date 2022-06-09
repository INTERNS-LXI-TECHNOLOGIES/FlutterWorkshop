import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pet_store/screens/pet_details_screen.dart';

import '../bloc/pet_list/pets_bloc.dart';
import '../widgets/image_decode_widget.dart';

class PetsScreen extends StatelessWidget {
  const PetsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(tabs: [
            Tab(
              text: 'available',
            ),
            Tab(
              text: 'pending',
            ),
            Tab(
              text: 'sold',
            ),
          ]),
        ),
        body: TabBarView(children: [
          Container(
            child: body(context, 'available'),
          ),
          Container(
            child: body(context, 'pending'),
          ),
          Container(
            child: body(context, 'sold'),
          ),
        ]),
      ),
    );
  }

  body(context, String status) {
    BlocProvider.of<PetsBloc>(context).add(LoadPetsByStatus(status));
    return BlocBuilder<PetsBloc, PetsState>(
      builder: (context, state) {
        if (state is PetsLoading) {
          return const Center(child: CircularProgressIndicator());
        }
        if (state is PetsLoaded) {
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
        } else {
          return const Center(child: CircularProgressIndicator());
        }
        //return Text("${state.petList.length}");
      },
    );
  }

  _body(context, String status) {
    BlocProvider.of<PetsBloc>(context).add(LoadPetsByStatus(status));

    // PetsBloc();
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
