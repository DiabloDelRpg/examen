import 'package:flutter/material.dart';
import 'details_screen.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Where are you going?', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white)),
            const SizedBox(height: 10),
            TextField(decoration: inputDecoration('From')),
            TextField(decoration: inputDecoration('To')),
            const SizedBox(height: 20),
            const Text('Date', style: TextStyle(fontSize: 18, color: Colors.white)),
            Row(
              children: [
                ChoiceChip(label: const Text('Today'), selected: true),
                const SizedBox(width: 10),
                ChoiceChip(label: const Text('Tomorrow'), selected: false),
              ],
            ),
            const SizedBox(height: 20),
            const Text('Passengers', style: TextStyle(fontSize: 18, color: Colors.white)),
            DropdownButton<int>(
              dropdownColor: Colors.white,
              value: 1,
              items: List.generate(6, (index) => DropdownMenuItem(value: index + 1, child: Text('${index + 1}'))),
              onChanged: (value) {},
            ),
            const SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const DetailsScreen()));
                },
                child: const Text('Search'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  InputDecoration inputDecoration(String label) {
    return InputDecoration(
      labelText: label,
      filled: true,
      fillColor: Colors.white,
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
    );
  }
}
