import 'package:flutter/material.dart';

class MedicationsScreen extends StatelessWidget {
  const MedicationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Active Medications'),
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
                child: const Icon(Icons.medication, color: Colors.white),
              ),
              title: Text('Medication ${index + 1}'),
              subtitle: const Text('1 tablet twice daily'),
              children: [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Instructions:',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 8),
                      const Text('• Take with food'),
                      const Text('• Avoid alcohol'),
                      const SizedBox(height: 16),
                      const Text(
                        'Side Effects:',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 8),
                      const Text('• Drowsiness'),
                      const Text('• Nausea'),
                      const SizedBox(height: 16),
                      Row(
                        children: [
                          const Text(
                            'Next Refill: ',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(DateTime.now().add(const Duration(days: 7)).toString().split(' ')[0]),
                        ],
                      ),
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
          // TODO: Add new medication
        },
        child: const Icon(Icons.add),
      ),
    );
  }
} 