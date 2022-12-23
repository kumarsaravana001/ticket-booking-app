import 'package:flutter/material.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:ticket_booking_app/screens/search_screen.dart';

import 'homeScreen/home_screen.dart';



class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  static final _widgetOptions = [
    const HomeScreen(),
    const SearchScreen(),
    const Text("Ticket"),
    const Text("Profile"),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Center(child: _widgetOptions[_selectedIndex])),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        elevation: 10,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(FluentIcons.home_20_regular),
              activeIcon: Icon(FluentIcons.home_20_filled),
              label: "home"),
          BottomNavigationBarItem(
              icon: Icon(FluentIcons.search_20_regular),
              activeIcon: Icon(FluentIcons.search_20_filled),
              label: "search"),
          BottomNavigationBarItem(
              icon: Icon(FluentIcons.ticket_horizontal_20_regular),
              activeIcon: Icon(FluentIcons.ticket_horizontal_20_filled),
              label: "ticket"),
          BottomNavigationBarItem(
              icon: Icon(FluentIcons.person_20_regular),
              activeIcon: Icon(FluentIcons.person_20_filled),
              label: "account"),
        ],
      ),
    );
    //Placeholder();
  }
}
