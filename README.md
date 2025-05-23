# Rare Disease Connect

A comprehensive Flutter application for rare disease management and support. This application aims to empower patients and families affected by rare diseases by providing tools for education, symptom tracking, and community support.

## Features

- 📱 Modern, accessible UI design
- 🏥 Medical appointment and record management
- 📊 Symptom tracking with data export
- 👥 Community support and networking
- 🤖 AI-powered health assistant (Gemini AI)
- 📚 Educational resources
- 💊 Medication management
- 👩‍⚕️ Doctor list and communication

## Getting Started

### Prerequisites

- Flutter SDK (latest stable version)
- Dart SDK
- Android Studio / VS Code
- Firebase project
- Gemini AI API key

### Installation

1. Clone the repository:
```bash
git clone https://github.com/yourusername/rare-disease-connect.git
cd rare-disease-connect
```

2. Install dependencies:
```bash
flutter pub get
```

3. Configure Firebase:
   - Create a new Firebase project
   - Add Android and iOS apps to your Firebase project
   - Download and add the configuration files
   - Enable Authentication and Firestore

4. Configure Gemini AI:
   - Get an API key from Google AI Studio
   - Replace `YOUR_API_KEY` in `lib/services/gemini_service.dart` with your actual API key

5. Run the app:
```bash
flutter run
```

## Architecture

The application follows a clean architecture pattern with the following structure:

```
lib/
  ├── config/         # App configuration
  ├── models/         # Data models
  ├── screens/        # UI screens
  ├── services/       # Business logic and API services
  ├── widgets/        # Reusable UI components
  └── main.dart       # App entry point
```

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Acknowledgments

- Flutter team for the amazing framework
- Google for Gemini AI
- The rare disease community for inspiration

## Support

For support, email support@rarediseaseconnect.com or join our Slack channel.