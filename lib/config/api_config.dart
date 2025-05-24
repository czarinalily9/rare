class ApiConfig {
  // Ollama local API endpoint
  static const String apiEndpoint = 'http://127.0.0.1:11434/api/generate';
  
  // No API key needed for Ollama as it runs locally
  static const String model = 'mistral';  // We'll use basic Mistral model
  
  static const Map<String, dynamic> defaultConfig = {
    'temperature': 0.7,
    'top_k': 40,
    'top_p': 0.9,
    'stream': false,
  };

  // System message to set the context
  static const String prompt = '''You are a medical assistant specialized in rare diseases. 
You should provide helpful information while always reminding users to consult healthcare professionals for medical advice.
Keep responses concise and focused on medical information.
You have access to information about various rare diseases and can help users understand symptoms, treatments, and management strategies.
Always maintain a professional and empathetic tone.

User message: ''';
} 