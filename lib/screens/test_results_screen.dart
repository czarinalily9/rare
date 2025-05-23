import 'package:flutter/material.dart';

class TestResultsScreen extends StatelessWidget {
  const TestResultsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Test Results'),
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
                child: const Icon(Icons.analytics, color: Colors.white),
              ),
              title: Text('Test Result ${index + 1}'),
              subtitle: Text(DateTime.now().subtract(Duration(days: index * 14)).toString().split(' ')[0]),
              children: [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Test Type:',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const Text('Blood Test'),
                      const SizedBox(height: 16),
                      const Text(
                        'Results:',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 8),
                      ListTile(
                        title: const Text('Hemoglobin'),
                        subtitle: const Text('14.5 g/dL'),
                        trailing: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                          decoration: BoxDecoration(
                            color: Colors.green.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: const Text(
                            'Normal',
                            style: TextStyle(color: Colors.green),
                          ),
                        ),
                        dense: true,
                      ),
                      const Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton.icon(
                            onPressed: () {
                              // TODO: Download report
                            },
                            icon: const Icon(Icons.download),
                            label: const Text('Download Report'),
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
    );
  }
} 