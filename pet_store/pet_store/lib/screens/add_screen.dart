import 'package:flutter/material.dart';

class AddScreen extends StatelessWidget {
  AddScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: Text('Add your pet')),
    );
  }
}
