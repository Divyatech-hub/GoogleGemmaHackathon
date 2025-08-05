import 'package:flutter/material.dart';
import 'chat_maps_screen.dart';

void main() {
  runApp(const RefugeeApp());
}

class RefugeeApp extends StatelessWidget {
  const RefugeeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Refugee Assistant',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const RefugeeAssistantScreen(),
    );
  }
}
