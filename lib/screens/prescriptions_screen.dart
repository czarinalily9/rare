import 'package:flutter/material.dart';

class PrescriptionsScreen extends StatelessWidget {
  const PrescriptionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Medicine Prescriptions'),
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
                child: const Icon(Icons.receipt_long, color: Colors.white),
              ),
              title: Text('Prescription #${1000 + index}'),
              subtitle: Text('Dr. Smith - ${DateTime.now().subtract(Duration(days: index * 7)).toString().split(' ')[0]}'),
              children: [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Medications:',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 8),
                      ListTile(
                        leading: const Icon(Icons.medication),
                        title: const Text('Medicine A'),
                        subtitle: const Text('1 tablet twice daily'),
                        dense: true,
                      ),
                      ListTile(
                        leading: const Icon(Icons.medication),
                        title: const Text('Medicine B'),
                        subtitle: const Text('1 tablet before bed'),
                        dense: true,
                      ),
                      const SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton.icon(
                            onPressed: () {
                              // TODO: Implement download
                            },
                            icon: const Icon(Icons.download),
                            label: const Text('Download PDF'),
                          ),
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
          // TODO: Implement new prescription upload
        },
        child: const Icon(Icons.add),
      ),
    );
  }
} 