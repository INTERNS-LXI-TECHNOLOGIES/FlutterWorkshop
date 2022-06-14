import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pet_store/screens/pet_details_screen.dart';

import '../bloc/pet_list/pets_bloc.dart';
import '../widgets/image_decode_widget.dart';

class PetsScreen extends StatefulWidget {
  const PetsScreen({Key? key}) : super(key: key);

  @override
  State<PetsScreen> createState() => _PetsScreenState();
}

class _PetsScreenState extends State<PetsScreen>
    with SingleTickerProviderStateMixin {
  late TabController controller;
  @override
  void initState() {
    super.initState();
    controller = TabController(length: 3, vsync: this);
    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('pets'),
        bottom: TabBar(controller: controller, tabs: const [
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
      //DefaultTabController.of(context)!.index
      body: TabBarView(controller: controller, children: [
        Container(
          child: body(context, controller.index),
        ),
        Container(
          child: body(context, controller.index),
        ),
        Container(
          child: body(context, controller.index),
        ),
      ]),
    );
  }

  body(context, int index) {
    debugPrint('tab controller index => $index');
    List<String> statusList = ['available', 'pending', 'sold'];
    BlocProvider.of<PetsBloc>(context).add(LoadPetsByStatus(statusList[index]));
    return BlocBuilder<PetsBloc, PetsState>(
      builder: (context, state) {
        // if (state is PetsLoading) {
        //   return const Center(child: CircularProgressIndicator());
        // }
        if (state is PetsLoaded && state.petList.isNotEmpty) {
          return ListView.builder(
            shrinkWrap: true,
            itemCount: state.petList.length,
            itemBuilder: (context, i) => ListTile(
              title: state.petList[i].name!.isNotEmpty
                  ? Text(state.petList[i].name!)
                  : const Text('no name'),
              leading: CircleAvatar(
                child:
                    getImagenBase64(petPhotos(state.petList[i].photoUrls)[0]),
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
}
