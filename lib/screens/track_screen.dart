import 'package:flutter/material.dart';

class TrackScreen extends StatelessWidget {
  const TrackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Track'),
      ),
      body: Center(
        child: Text(
          'Track Screen',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
    );
  }
} 