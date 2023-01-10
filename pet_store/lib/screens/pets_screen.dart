import 'package:built_collection/built_collection.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pet_store/bloc/pet_list/pets_bloc.dart';
import 'package:pet_store/widgets/caps_text.dart';
import 'package:pet_store/widgets/image_decode_widget.dart';

import 'pet_details_screen.dart';

class PetsScreen extends StatefulWidget {
  const PetsScreen({Key? key}) : super(key: key);

  @override
  State<PetsScreen> createState() => _PetsScreenState();
}

class _PetsScreenState extends State<PetsScreen>
    with SingleTickerProviderStateMixin {
  late TabController controller;
  // late final TextCapitalization textCapitalization;
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
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 131, 203, 203),
      appBar: AppBar(
        title: Text(
          CapsText(text: 'pets'),
        ),
        bottom: ButtonsTabBar(
            controller: controller,
            buttonMargin: const EdgeInsets.all(8),
            contentPadding: const EdgeInsets.symmetric(horizontal: 10),
            backgroundColor: const Color.fromARGB(255, 181, 241, 237),
            unselectedBackgroundColor: Colors.grey[300],
            unselectedLabelStyle: const TextStyle(color: Colors.black),
            labelStyle: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold),
            tabs: [
              Tab(
                //text: 'available',
                child: Text(
                  CapsText(text: 'available'),
                  style: GoogleFonts.aBeeZee(),
                ),
              ),
              Tab(
                child: Text(
                  CapsText(text: 'pending'),
                  style: GoogleFonts.aBeeZee(),
                ),
              ),
              Tab(
                child: Text(
                  CapsText(text: 'sold'),
                  style: GoogleFonts.aBeeZee(),
                ),
              ),
            ]),
      ),
      //DefaultTabController.of(context)!.index
      body: TabBarView(controller: controller, children: [
        Container(
          child: petListByStatus(context, controller.index),
        ),
        Container(
          child: petListByStatus(context, controller.index),
        ),
        Container(
          child: petListByStatus(context, controller.index),
        ),
      ]),
    );
  }

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
          return GridView.builder(
            shrinkWrap: true,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                // maxCrossAxisExtent: 200,
                //childAspectRatio: 3 / 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 2),
            itemCount: state.petList.length,
            itemBuilder: (context, i) => Card(
              child: Container(
                height: 300,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromARGB(137, 127, 241, 232)),
                child: Stack(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                PetDetails(pet: state.petList[i]),
                          ),
                        );
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Expanded(
                            child: getImagenBase64(
                                petPhotos(state.petList[i].photoUrls)[0]),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: 5,
                      right: 10,
                      child: Text(
                        '${state.petList[i].name![0].toUpperCase()}${state.petList[i].name!.substring(1)}',
                        // state.petList[i].name!,
                        // style: GoogleFonts.aBeeZee(),
                        style: const TextStyle(
                          color: Color.fromARGB(255, 65, 144, 144),
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          //fontFamily:GoogleFonts.aBeeZee(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
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
