import 'package:flutixapp/ui/pages/home/home.dart';
import 'package:flutixapp/ui/pages/home/profile.dart';
import 'package:flutixapp/ui/pages/home/ticket.dart';
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
            icon: Padding(
              padding: EdgeInsets.only(top: 10.0, bottom: 3.0),
              child: Icon(Icons.movie, size: 32),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(top: 10.0, bottom: 3.0),
              child: Icon(Icons.shopping_cart, size: 32),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(top: 10.0, bottom: 3.0),
              child: Icon(Icons.person, size: 32),
            ),
            label: '',
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
