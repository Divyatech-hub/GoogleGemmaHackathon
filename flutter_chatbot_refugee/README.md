# Flutter Chatbot for Refugees

This project is a Flutter application designed to assist refugees in finding the nearest UN shelters, grocery stores, and primary health care centers. The app operates entirely offline, utilizing offline maps and translation features to provide essential information in various languages.

## Features

- **Offline Maps**: Users can access maps without an internet connection to locate nearby resources.
- **Translation**: The app includes a translation feature that allows users to translate text into different languages offline, similar to Google Translate.
- **Voice Features**: The app supports voice-to-text and text-to-voice functionalities to enhance the translation experience.
- **Chatbot Interface**: A chatbot interface helps users interact with the app and find the information they need.

## Project Structure

```
flutter_chatbot_refugee
├── lib
│   ├── main.dart
│   ├── screens
│   │   ├── chat_screen.dart
│   │   ├── map_screen.dart
│   │   └── translation_screen.dart
│   ├── models
│   │   ├── shelter.dart
│   │   ├── grocery_store.dart
│   │   └── health_center.dart
│   ├── services
│   │   ├── offline_map_service.dart
│   │   ├── translation_service.dart
│   │   ├── voice_service.dart
│   │   └── gemma_model_service.dart
│   └── widgets
│       ├── chat_bot_widget.dart
│       ├── map_widget.dart
│       └── translation_widget.dart
├── pubspec.yaml
└── README.md
```

## Setup Instructions

1. **Clone the Repository**: 
   ```
   git clone https://github.com/yourusername/flutter_chatbot_refugee.git
   ```

2. **Navigate to the Project Directory**: 
   ```
   cd flutter_chatbot_refugee
   ```

3. **Install Dependencies**: 
   ```
   flutter pub get
   ```

4. **Run the Application**: 
   ```
   flutter run
   ```

## Dependencies

Make sure to check the `pubspec.yaml` file for the list of dependencies required for this project.

## Contributing

Contributions are welcome! Please feel free to submit a pull request or open an issue for any suggestions or improvements.

## License

This project is licensed under the MIT License. See the LICENSE file for more details.