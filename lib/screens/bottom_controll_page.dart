import 'package:flutter/material.dart';
import 'package:ticket_booking_app/screens/bottom_bar.dart';
import 'package:ticket_booking_app/screens/home_screen.dart';

class BottomNavController extends StatefulWidget {
  static final List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    const Text('Search'),
    const Text('Ticket'),
    const Text('Profile'),
  ];

  const BottomNavController({Key? key}) : super(key: key);

  @override
  State<BottomNavController> createState() => _BottomNavControllerState();
}

class _BottomNavControllerState extends State<BottomNavController> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    // _selectedIndex = index;
    // print('$_selectedIndex');
    setState((){
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BottomNavController._widgetOptions[_selectedIndex],
      ),
      bottomNavigationBar: BottomBar(
        onTap: _onItemTapped, currentIndex: _selectedIndex,
      ),
    );
  }
}
