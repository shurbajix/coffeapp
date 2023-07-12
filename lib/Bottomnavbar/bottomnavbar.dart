import 'package:flutter/material.dart';

import '../Aboutus.dart';
import '../Lists.dart';
import '../Menu.dart';
import '../home/Homepage.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({super.key});

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = <Widget>[
    const MyHomePage(),
    const Menu(),
    const Lists(),
    const About_us(),
  ];

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: const [
        BottomNavigationBarItem(
          backgroundColor: Color(0xff141821),
          icon: Icon(
            Icons.home,
            color: Color(0xff86878B),
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.heart_broken,
            color: Color(0xff86878B),
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            color: Color(0xff86878B),
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            color: Color(0xff86878B),
          ),
          label: '',
        ),
      ],
    );
  }
}
