import 'package:flutter/material.dart';
import 'package:flutterappsanbercode/pages/search_screen.dart';
import 'package:flutterappsanbercode/pages/profile_screen.dart';
import 'package:flutterappsanbercode/routes/route_name.dart';
import 'package:flutterappsanbercode/pages/home.dart';

class BottomNav extends StatefulWidget {
  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
   int selectedIndex = 0;

  final _pageOptions = [
    HomePage(),
    SearchScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageOptions[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Profile',
          ),
        ],
        currentIndex: selectedIndex,
        selectedItemColor: Color.fromARGB(255, 38, 126, 95),
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
      ),
    );
  }
}
