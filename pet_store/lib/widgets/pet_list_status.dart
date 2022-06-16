import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/pet_list/pets_bloc.dart';
import '../screens/pet_details_screen.dart';
import 'image_decode_widget.dart';

petListByStatus(context, int index) {
  debugPrint('tab controller index => $index');
  List<String> statusList = ['available', 'pending', 'sold'];
  BlocProvider.of<PetsBloc>(context).add(LoadPetsByStatus(statusList[index]));
  return BlocBuilder<PetsBloc, PetsState>(
    builder: (context, state) {
      // if (state is PetsLoading) {
      //   return const Center(child: CircularProgressIndicator());
      // }
      if (state is PetsLoaded && state.petList.isNotEmpty) {
        Future.delayed(const Duration(seconds: 2),
            () => const Center(child: CircularProgressIndicator()));
        return ListView.builder(
          shrinkWrap: true,
          itemCount: state.petList.length,
          itemBuilder: (context, i) => ListTile(
            title: state.petList[i].name!.isNotEmpty
                ? Text(state.petList[i].name!)
                : const Text('no name'),
            leading: CircleAvatar(
              child: getImagenBase64(petPhotos(state.petList[i].photoUrls)[0]),
            ),
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
        return const Center(child: CircularProgressIndicator());
      }
    },
  );
}

List<String> petPhotos(BuiltList<String> photos) {
  List<String> photosUrl = [];
  photosUrl.addAll(photos);
  return photosUrl;
}
