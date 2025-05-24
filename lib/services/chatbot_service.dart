import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/chat_message.dart';
import '../config/api_config.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

final chatMessagesProvider = StateNotifierProvider<ChatMessagesNotifier, List<ChatMessage>>((ref) {
  return ChatMessagesNotifier();
});

final chatbotServiceProvider = Provider((ref) {
  return ChatbotService(ref);
});

class ChatMessagesNotifier extends StateNotifier<List<ChatMessage>> {
  ChatMessagesNotifier() : super([
    ChatMessage.fromBot(
      'Hello! I\'m your medical assistant specialized in rare diseases. How can I help you today?'
    )
  ]);

  void addMessage(ChatMessage message) {
    state = [...state, message];
  }
}

class ChatbotService {
  final Ref _ref;
  String _conversationContext = '';

  ChatbotService(this._ref) {
    _conversationContext = ApiConfig.prompt;
  }

  Future<void> sendMessage(String message) async {
    final messagesNotifier = _ref.read(chatMessagesProvider.notifier);
    messagesNotifier.addMessage(ChatMessage.fromUser(message));

    try {
      debugPrint('Sending message to Ollama: $message');

      // Prepare prompt with context and user message
      final prompt = _conversationContext + message;

      final response = await http.post(
        Uri.parse(ApiConfig.apiEndpoint),
        headers: {
          'Content-Type': 'application/json',
        },
        body: json.encode({
          'model': ApiConfig.model,
          'prompt': prompt,
          ...ApiConfig.defaultConfig,
        }),
      );

      debugPrint('API response status: ${response.statusCode}');
      debugPrint('API response body: ${response.body}');

      if (response.statusCode == 200) {
        final responseData = json.decode(response.body);
        final botMessage = responseData['response'] as String;
        
        // Update conversation context
        _conversationContext = prompt + '\n\nAssistant: ' + botMessage + '\n\nUser message: ';

        messagesNotifier.addMessage(ChatMessage.fromBot(botMessage));
      } else {
        String errorMessage = 'An error occurred while processing your request.';
        if (response.statusCode == 404) {
          errorMessage = 'Model not found. Please make sure Ollama is running and the model is downloaded.';
        } else if (response.statusCode == 500) {
          errorMessage = 'Server error. Please check if Ollama is running properly.';
        }
        
        messagesNotifier.addMessage(
          ChatMessage.fromBot(
            'I apologize, but I encountered an error: $errorMessage Please try again later.'
          ),
        );
      }
    } catch (e, stackTrace) {
      debugPrint('Error sending message: $e');
      debugPrint('Stack trace: $stackTrace');
      
      messagesNotifier.addMessage(
        ChatMessage.fromBot(
          'I apologize, but I encountered an error. Please make sure Ollama is running on your computer.'
        ),
      );
      rethrow;
    }
  }
} 