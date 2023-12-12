import 'package:flutixapp/ui/pages/home/home.dart';
import 'package:flutixapp/ui/pages/home/profile.dart';
import 'package:flutixapp/ui/pages/home/ticket.dart';
import 'package:flutixapp/ui/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

Color buttonColor = const Color(0xFFE1A20B);

class _BottomNavState extends State<BottomNav> {
  // int _selectedIndex = 0;

  final List<Widget> _pages = [
    const HomePage(),
    const TicketPage(),
    const ProfilPage()
  ];

  @override
  Widget build(BuildContext context) {
    final statusProvider = Provider.of<StatusProvider>(context);
    return Scaffold(            
      body: _pages[statusProvider.currentIndex],
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
          currentIndex: statusProvider.currentIndex,
        onTap: (index) {          
            statusProvider.updateCurrentIndex(index);          
        },
      ),
    );
  }
}
