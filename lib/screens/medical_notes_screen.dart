import 'package:flutter/material.dart';

class MedicalNotesScreen extends StatelessWidget {
  const MedicalNotesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Medical Notes'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: 5,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.only(bottom: 16),
            child: ExpansionTile(
              leading: CircleAvatar(
                backgroundColor: Theme.of(context).colorScheme.primary,
                child: const Icon(Icons.note_alt, color: Colors.white),
              ),
              title: Text('Medical Note ${index + 1}'),
              subtitle: Text('Dr. Johnson - ${DateTime.now().subtract(Duration(days: index * 7)).toString().split(' ')[0]}'),
              children: [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Symptoms:',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 8),
                      const Text('• Headache'),
                      const Text('• Fatigue'),
                      const SizedBox(height: 16),
                      const Text(
                        'Diagnosis:',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 8),
                      const Text('Migraine'),
                      const SizedBox(height: 16),
                      const Text(
                        'Recommendations:',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 8),
                      const Text('• Rest'),
                      const Text('• Stay hydrated'),
                      const Text('• Avoid bright lights'),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // TODO: Add new note
        },
        child: const Icon(Icons.add),
      ),
    );
  }
} 