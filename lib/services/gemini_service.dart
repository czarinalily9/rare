import 'package:google_generative_ai/google_generative_ai.dart';

class GeminiService {
  static const String _apiKey = 'YOUR_API_KEY'; // Replace with your actual API key
  static final _model = GenerativeModel(
    model: 'gemini-pro',
    apiKey: _apiKey,
  );

  static Future<String> getResponse(String prompt) async {
    try {
      final content = [Content.text(prompt)];
      final response = await _model.generateContent(content);
      return response.text ?? 'No response generated';
    } catch (e) {
      throw Exception('Failed to get AI response: $e');
    }
  }
} 