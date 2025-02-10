import 'package:flutter/material.dart';
import 'search_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/car.png', height: 250),
            const SizedBox(height: 20),
            const Text("CarPoolin", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white)),
            const Text("Drive & Save Money", style: TextStyle(fontSize: 16, color: Colors.white70)),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const SearchScreen()));
              },
              child: const Text("➡"),
            ),
          ],
        ),
      ),
    );
  }
}
