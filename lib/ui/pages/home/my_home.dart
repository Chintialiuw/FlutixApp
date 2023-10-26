import 'package:flutixapp/home/home.dart';
import 'package:flutixapp/home/profile.dart';
import 'package:flutixapp/home/ticket.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

Color buttonColor = const Color(0xFFE1A20B);

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const HomePage(),
    const TicketPage(),
    const ProfilPage()
  ];

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
        selectedItemColor: buttonColor,
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
