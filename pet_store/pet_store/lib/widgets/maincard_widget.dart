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
          builder: (context, state) {
            // debugPrint('bloc return list=>${petList}');
            debugPrint('bloc return list length=>${state.petList.length}');
            return Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1),
                shrinkWrap: true,
                itemCount: state.petList.length,
                itemBuilder: (context, i) => Image.network(
                  state.petList[i].photoUrls[i].toString(),
                  fit: BoxFit.cover,
                ),
                // ListTile(
                //   title: Text('${state.petList[i].name}'),
                //   leading: CircleAvatar(
                //     child: Image.network(
                //       '${state.petList[i].photoUrls}',
                //     ),
                //     //NetworkImage('${state.petList[i].photoUrls}')

                //     //Text('${state.petList[i].photoUrls}'),
                //   ),
                // ),
              ),
            );
          },
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
