import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  const CustomBottomNavigationBar({
    Key? key,
    required this.currentIndex,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.chat_bubble_outline),
          label: 'Chat',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.lightbulb_outline),
          label: 'Bot AI',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.list),
          label: 'Prompt',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline),
          label: 'Information',
        ),
      ],
      currentIndex: currentIndex,
      unselectedItemColor: Colors.grey[600],
      selectedItemColor: Colors.blue,
      onTap: onTap,
    );
  }
}