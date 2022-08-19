import 'package:flutter/material.dart';
import 'package:ticket_booking_app/screens/bottom_bar.dart';

class Home extends StatefulWidget {
  static final List<Widget> _widgetOptions = <Widget>[
    Text('Home'),
    Text('Search'),
    Text('Ticket'),
    Text('Profile'),
  ];

  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
        child: Home._widgetOptions[_selectedIndex],
      ),
      bottomNavigationBar: BottomBar(
        onTap: _onItemTapped, currentIndex: _selectedIndex,
      ),
    );
  }
}
