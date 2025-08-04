import 'package:flutter/material.dart';

class ChatbotScreen extends StatefulWidget {
  @override
  _ChatbotScreenState createState() => _ChatbotScreenState();
}

class _ChatbotScreenState extends State<ChatbotScreen> {
  final TextEditingController _controller = TextEditingController();
  List<Map<String, String>> messages = [];

  void _sendMessage(String text) {
    setState(() {
      messages.add({'user': text, 'bot': 'Bot reply in selected language'});
    });
    _controller.clear();
    // TODO: Integrate Gemma 3n, translation, speech-to-text, and TTS here
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Chatbot')),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: messages.length,
              itemBuilder: (context, idx) {
                final msg = messages[idx];
                return ListTile(
                  title: Text('You: ${msg['user']}'),
                  subtitle: Text('Bot: ${msg['bot']}'),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: InputDecoration(
                      hintText: 'Type your message...',
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send),
                  onPressed: () {
                    if (_controller.text.isNotEmpty) {
                      _sendMessage(_controller.text);
                    }
                  },
                ),
                IconButton(
                  icon: Icon(Icons.mic),
                  onPressed: () {
                    // TODO: Integrate speech-to-text here
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}