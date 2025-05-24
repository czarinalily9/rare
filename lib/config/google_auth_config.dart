class GoogleAuthConfig {
  // Make sure there are no spaces or special characters in the API key
  static const String apiKey = 'AIzaSyCZ6qYq2qlsxvdkzgyZCgVOoppslOlRbsM';

  // Check if API key is valid
  static bool isValidApiKey(String key) {
    // The key should be exactly 39 characters for Gemini API
    return key.startsWith('AIza') && key.length == 39 && !key.contains(' ');
  }

  // Get the API endpoint
  static String get apiEndpoint => 'https://generativelanguage.googleapis.com/v1beta/models/gemini-pro:generateContent';
} 