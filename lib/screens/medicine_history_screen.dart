import 'package:flutter/material.dart';

class MedicineHistoryScreen extends StatelessWidget {
  const MedicineHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Medicine History'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: 10,
        itemBuilder: (context, index) {
          final bool isActive = index < 3;
          return Card(
            margin: const EdgeInsets.only(bottom: 16),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: isActive 
                    ? Theme.of(context).colorScheme.primary
                    : Colors.grey,
                child: Icon(
                  Icons.medication,
                  color: isActive ? Colors.white : Colors.white70,
                ),
              ),
              title: Text(
                'Medication ${index + 1}',
                style: TextStyle(
                  color: isActive ? null : Colors.grey,
                ),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Prescribed: ${DateTime.now().subtract(Duration(days: index * 30)).toString().split(' ')[0]}',
                    style: TextStyle(
                      color: isActive ? Colors.grey[600] : Colors.grey,
                    ),
                  ),
                  Text(
                    isActive ? 'Active' : 'Discontinued',
                    style: TextStyle(
                      color: isActive ? Colors.green : Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              trailing: IconButton(
                icon: const Icon(Icons.info_outline),
                onPressed: () {
                  // TODO: Show medication details
                },
              ),
            ),
          );
        },
      ),
    );
  }
} 