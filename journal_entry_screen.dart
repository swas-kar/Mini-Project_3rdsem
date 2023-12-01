import 'package:flutter/material.dart';
import '../constants.dart';

class JournalEntryScreen extends StatelessWidget {
  final int monthIndex;
  final int? selectedDay;

  const JournalEntryScreen({
    Key? key,
    required this.monthIndex,
    required this.selectedDay,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Journal Entry - ${months[monthIndex]!.keys.toList()[0]} - $selectedDay'),
      ),
      body: Column(
        children: [
          // UI looking like a notepad
          const Expanded(
            child:  Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                maxLines: null, // Allow multiline input
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Write your journal entry...',
                ),
              ),
            ),
          ),
          // Submit button
          ElevatedButton(
            onPressed: () {
              // Implement your submit logic here (e.g., save to database)
              // ...

              // Close the screen
              Navigator.pop(context);
            },
            child: Text('Submit'),
          ),
        ],
      ),
    );
  }
}