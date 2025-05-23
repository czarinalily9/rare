import 'package:flutter/material.dart';

class LearnScreen extends StatelessWidget {
  const LearnScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Learn'),
      ),
      body: Center(
        child: Text(
          'Learn Screen',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
    );
  }
} 