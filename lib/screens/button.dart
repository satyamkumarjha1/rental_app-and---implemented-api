import 'package:flutter/material.dart';
import 'package:rental_app/screens/api_screen.dart';
import 'package:rental_app/screens/home.dart';
import 'package:rental_app/screens/jp_api_screen.dart';
import 'package:rental_app/screens/profile.dart';

class ButtonPage extends StatefulWidget {
  @override
  State<ButtonPage> createState() => _ButtonPageState();
}

class _ButtonPageState extends State<ButtonPage> {
  int _selectedIndex = 0;
  final List<Widget> _pages = [
    Page1(),
    Page2(),
    Page3(),
    Page4(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.black,

        // backgroundColor: Colors.black,
        fixedColor: const Color.fromARGB(255, 219, 15, 15),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Me',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const HomePage();
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ApiScreen();
  }
}

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return JPApiScreen();
  }
}

class Page4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const ProfilePage();
  }
}
