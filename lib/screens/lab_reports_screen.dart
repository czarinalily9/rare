import 'package:flutter/material.dart';

class LabReportsScreen extends StatelessWidget {
  const LabReportsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lab Reports'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: 5,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.only(bottom: 16),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Theme.of(context).colorScheme.primary,
                child: const Icon(Icons.science, color: Colors.white),
              ),
              title: Text('Blood Test Report ${index + 1}'),
              subtitle: Text('Date: ${DateTime.now().subtract(Duration(days: index * 30)).toString().split(' ')[0]}'),
              trailing: const Icon(Icons.download),
              onTap: () {
                // TODO: Implement report download
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // TODO: Implement new report upload
        },
        child: const Icon(Icons.add),
      ),
    );
  }
} 