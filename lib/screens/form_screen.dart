import 'package:flutter/material.dart';

class FormScreen extends StatefulWidget {
  @override
  _FormScreenState createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  final TextEditingController originController = TextEditingController();
  final TextEditingController destinationController = TextEditingController();
  DateTime? selectedDate;
  int passengers = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2D4D5D),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Where are you going?',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white)),
            SizedBox(height: 10),
            TextField(
              controller: originController,
              decoration: InputDecoration(labelText: 'From', filled: true, fillColor: Colors.white),
            ),
            TextField(
              controller: destinationController,
              decoration: InputDecoration(labelText: 'To', filled: true, fillColor: Colors.white),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Text('Date', style: TextStyle(color: Colors.white, fontSize: 18)),
                Spacer(),
                ChoiceChip(label: Text('Today'), selected: true),
                SizedBox(width: 10),
                ChoiceChip(label: Text('Tomorrow'), selected: false)
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Text('Passengers', style: TextStyle(color: Colors.white, fontSize: 18)),
                Spacer(),
                DropdownButton<int>(
                  dropdownColor: Colors.white,
                  value: passengers,
                  items: List.generate(6, (index) => index + 1)
                      .map((e) => DropdownMenuItem(
                            child: Text('$e'),
                            value: e,
                          ))
                      .toList(),
                  onChanged: (value) {
                    setState(() {
                      passengers = value!;
                    });
                  },
                ),
              ],
            ),
            SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Search', style: TextStyle(color: Colors.black)),
              ),
            )
          ],
        ),
      ),
    );
  }
}