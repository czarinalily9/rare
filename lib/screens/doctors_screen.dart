import 'package:flutter/material.dart';

class DoctorsScreen extends StatelessWidget {
  const DoctorsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Doctor List'),
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
                child: const Icon(Icons.person, color: Colors.white),
              ),
              title: Text('Dr. Smith ${index + 1}'),
              subtitle: const Text('Specialist - Hospital Name'),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: const Icon(Icons.phone),
                    onPressed: () {
                      // TODO: Implement call
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.message),
                    onPressed: () {
                      // TODO: Implement message
                    },
                  ),
                ],
              ),
              onTap: () {
                // TODO: Show doctor details
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // TODO: Add new doctor
        },
        child: const Icon(Icons.add),
      ),
    );
  }
} 