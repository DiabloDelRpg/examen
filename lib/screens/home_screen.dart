import 'package:flutter/material.dart';
import 'form_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/car.png', height: 200),
            SizedBox(height: 20),
            Text('CarPoolin',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white)),
            Text('Drive & Save Money',
                style: TextStyle(fontSize: 16, color: Colors.white70)),
            SizedBox(height: 40),
            FloatingActionButton(
              backgroundColor: Colors.white,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FormScreen()),
                );
              },
              child: Icon(Icons.arrow_forward, color: Colors.black),
            )
          ],
        ),
      ),
    );
  }
}
