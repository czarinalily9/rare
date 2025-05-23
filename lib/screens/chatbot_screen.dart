import 'package:flutter/material.dart';

class ChatbotScreen extends StatelessWidget {
  const ChatbotScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chatbot'),
      ),
      body: Center(
        child: Text(
          'Chatbot Screen',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
    );
  }
} 