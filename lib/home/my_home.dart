import 'package:flutixapp/home/home.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

// ignore: use_full_hex_values_for_flutter_colors
Color buttonColor = const Color(0xE1A20B);

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [const HomePage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.grey[100],
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.movie, size: 32),
            label: 'Movies',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.airplane_ticket, size: 32),
            label: 'Tickets',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.boy_outlined, size: 32),
            label: 'Profile',
          ),
        ],
        selectedItemColor: Colors.blue,
        currentIndex: _selectedIndex,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
