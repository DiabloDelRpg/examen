import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('16:30 Brussels', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white)),
            const Text('Pick up at Brussels Station', style: TextStyle(fontSize: 16, color: Colors.white70)),
            const SizedBox(height: 10),
            const Text('17:20 Ghent', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white)),
            const Text('Drop off at Gent-Sint', style: TextStyle(fontSize: 16, color: Colors.white70)),
            const SizedBox(height: 20),
            Row(
              children: [
                CircleAvatar(backgroundImage: AssetImage('assets/driver.png'), radius: 30),
                const SizedBox(width: 10),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Stephan', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white)),
                    Text('⭐ 4.99 (347 reviews)', style: TextStyle(fontSize: 14, color: Colors.white70)),
                    Text('🚗 Big White Car', style: TextStyle(fontSize: 14, color: Colors.white70)),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Order Now'),
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'By clicking on "Order Now", you agree with Terms and Policies of using CarPoolin.',
              style: TextStyle(fontSize: 12, color: Colors.white60),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
