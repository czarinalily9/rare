import 'package:flutter/material.dart';

class MetaCard extends StatelessWidget {
  final String name;
  final String dateOfBirth;
  final String gender;
  final int age;
  final String patientId;

  const MetaCard({
    super.key,
    required this.name,
    required this.dateOfBirth,
    required this.gender,
    required this.age,
    required this.patientId,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      elevation: 4,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(32),
          bottomRight: Radius.circular(32),
        ),
      ),
      color: Theme.of(context).colorScheme.primary.withOpacity(0.9),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(20),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        radius: 24,
                        backgroundColor: Colors.white24,
                        child: Icon(
                          Icons.person,
                          color: Colors.white,
                          size: 32,
                        ),
                      ),
                      const SizedBox(width: 12),
                      Text(
                        name,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(
                        icon: Icon(
                          Theme.of(context).brightness == Brightness.light
                              ? Icons.dark_mode_outlined
                              : Icons.light_mode_outlined,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          // Theme toggle will be handled by the app
                        },
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.2),
                          shape: BoxShape.circle,
                        ),
                        padding: const EdgeInsets.all(8),
                        child: const Icon(
                          Icons.notifications_none,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                decoration: BoxDecoration(
                  color: Colors.white10,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '$dateOfBirth, $gender, $age',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'Patient ID: $patientId',
                      style: const TextStyle(
                        color: Colors.white70,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
} 