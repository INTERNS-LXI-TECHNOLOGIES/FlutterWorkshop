import 'package:flutter/material.dart';

ValueNotifier<int> indexNotifier = ValueNotifier(0);

class BottombarWidgets extends StatelessWidget {
  const BottombarWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: indexNotifier,
        builder: (context, int newIndex, _) {
          return BottomNavigationBar(
              backgroundColor: Colors.blue,
              currentIndex: newIndex,
              selectedItemColor: Colors.white,
              unselectedItemColor: Colors.white54,
              type: BottomNavigationBarType.fixed,
              onTap: (index) {
                indexNotifier.value = index;
              },
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'home',
                ),
                BottomNavigationBarItem(icon: Icon(Icons.add), label: 'add'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.monitor_heart_outlined), label: 'my pet'),
                BottomNavigationBarItem(icon: Icon(Icons.list), label: 'pets')
              ]);
        });
  }
}
