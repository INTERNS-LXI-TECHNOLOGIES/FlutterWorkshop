import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pet_store/pet_list/pets_bloc.dart';

class MainCard extends StatelessWidget {
  MainCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: _body(context),
    );
  }

  _body(context) {
    BlocProvider.of<PetsBloc>(context).add(ShowList());
    return Column(
      children: [
        BlocBuilder<PetsBloc, PetsState>(
          builder: ((context, state) {
            List? petList = state.petList;
            return Expanded(
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: petList!.length,
                  itemBuilder: (context, index) => ListTile(
                        title: petList[index],
                      )),
            );
          }),
        )
      ],
    );
  }

  // Widget _list(List petList) {
  //   return Expanded(
  //     child: ListView.builder(
  //         itemCount: petList.length,
  //         itemBuilder: (_, index) => ListTile(
  //               title: petList[index].,
  //             )),
  //   );
  // }

  //petCollection() async {
  // List<String> statusList = ['available'];
  // //List<Pet>
  // final petList = [];
  // await Openapi()
  //     .getPetApi()
  //     .findPetsByStatus(status: BuiltList(statusList))
  //     .then((value) => {
  //           //  debugPrint('pets are : $value'),
  //           petList.addAll(value.data!.asList()),
  //           debugPrint('pet list : $petList'),
  //         });
  // return petList;

  // }
}
