import 'package:flutter/material.dart';

import '../widgets/pet_list_status.dart';

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
}
