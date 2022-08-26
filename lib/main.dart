import 'package:flutter/material.dart';
import 'package:ticket_booking_app/screens/bottom_controll_page.dart';
import 'package:ticket_booking_app/utils/app_styles.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: primary,
      ),
      home: BottomNavController(),
    );
  }
}
