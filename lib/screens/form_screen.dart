import 'package:flutter/material.dart';

class FormScreen extends StatefulWidget {
  @override
  _FormScreenState createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  final TextEditingController originController = TextEditingController();
  final TextEditingController destinationController = TextEditingController();

  String selectedDate = "Today"; // Controlador para seleccionar fecha
  int passengers = 1; // Controlador para seleccionar pasajeros

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2D4D5D),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Where are you going?',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
            ),
            const SizedBox(height: 10),

            // Campos de texto
            TextField(
              controller: originController,
              decoration: InputDecoration(
                labelText: 'From',
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: destinationController,
              decoration: InputDecoration(
                labelText: 'To',
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              ),
            ),
            const SizedBox(height: 20),

            // Selección de fecha
            Row(
              children: [
                const Text('Date', style: TextStyle(color: Colors.white, fontSize: 18)),
                const Spacer(),
                ChoiceChip(
                  label: const Text('Today'),
                  selected: selectedDate == "Today",
                  onSelected: (bool selected) {
                    setState(() {
                      selectedDate = "Today";
                    });
                  },
                  selectedColor: Colors.blue,
                  backgroundColor: Colors.white,
                  labelStyle: TextStyle(color: selectedDate == "Today" ? Colors.white : Colors.black),
                ),
                const SizedBox(width: 10),
                ChoiceChip(
                  label: const Text('Tomorrow'),
                  selected: selectedDate == "Tomorrow",
                  onSelected: (bool selected) {
                    setState(() {
                      selectedDate = "Tomorrow";
                    });
                  },
                  selectedColor: Colors.blue,
                  backgroundColor: Colors.white,
                  labelStyle: TextStyle(color: selectedDate == "Tomorrow" ? Colors.white : Colors.black),
                ),
              ],
            ),
            const SizedBox(height: 20),

            // Selección de pasajeros
            Row(
              children: [
                const Text('Passengers', style: TextStyle(color: Colors.white, fontSize: 18)),
                const Spacer(),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: DropdownButton<int>(
                    value: passengers,
                    isExpanded: false,
                    underline: Container(), // Elimina la línea predeterminada
                    items: List.generate(6, (index) => index + 1)
                        .map((e) => DropdownMenuItem(
                              value: e,
                              child: Text('$e'),
                            ))
                        .toList(),
                    onChanged: (value) {
                      setState(() {
                        passengers = value!;
                      });
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),

            // Botón de búsqueda
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Search', style: TextStyle(color: Colors.black)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
