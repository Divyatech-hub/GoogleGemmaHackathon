import 'package:flutter/material.dart';
import 'maps_screen.dart';
import 'chatbot_screen.dart';

void main() {
  runApp(RefugeeApp());
}

class RefugeeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Refugee Helper',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
      routes: {
        '/map': (context) => MapScreen(),
        '/chatbot': (context) => ChatbotScreen(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Refugee Helper')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton.icon(
              icon: Icon(Icons.map),
              label: Text('Maps & Navigation'),
              onPressed: () => Navigator.pushNamed(context, '/map'),
            ),
            SizedBox(height: 20),
            ElevatedButton.icon(
              icon: Icon(Icons.chat),
              label: Text('Chatbot'),
              onPressed: () => Navigator.pushNamed(context, '/chatbot'),
            ),
          ],
        ),
      ),
    );
  }
}