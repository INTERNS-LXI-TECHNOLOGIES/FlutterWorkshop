import 'package:flutter/material.dart';

import 'caps_text.dart';

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
              items: [
                BottomNavigationBarItem(
                  icon: const Icon(Icons.home),
                  label: CapsText(text: 'home'),
                ),
                BottomNavigationBarItem(
                  icon: const Icon(Icons.add),
                  label: CapsText(text: 'add'),
                ),
                BottomNavigationBarItem(
                  icon: const Icon(Icons.monitor_heart_outlined),
                  label: CapsText(text: 'my pet'),
                ),
                BottomNavigationBarItem(
                  icon: const Icon(Icons.list),
                  label: CapsText(text: 'pets'),
                )
              ]);
        });
  }
}
