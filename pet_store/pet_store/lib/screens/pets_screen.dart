import 'package:flutter/material.dart';
import 'package:pet_store/widgets/maincard_widget.dart';

class PetsScreen extends StatelessWidget {
  const PetsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MainCard(),
      // body: Column(
      //   children: [
      //     Text('Pet List'),
      //     MainCard(),
      //   ],
      // ),
    );
  }
}
