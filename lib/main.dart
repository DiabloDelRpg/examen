import 'package:flutter/material.dart';
import './screens/home_screen.dart';

void main() {
  runApp(MyHomeApp());
}

class MyHomeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
theme: ThemeData(
  primaryColor: Color(0xFF2D4D5D),
  scaffoldBackgroundColor: Color(0xFF2D4D5D),
  textTheme: TextTheme(
    bodyLarge: TextStyle(color: Colors.white),
    bodyMedium: TextStyle(color: Colors.white),
  ),
),

      home: HomeScreen(),
    );
  }
}
