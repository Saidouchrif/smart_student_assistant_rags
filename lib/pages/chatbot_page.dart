import 'package:flutter/material.dart';

class ChatbotPage extends StatefulWidget {
  const ChatbotPage({super.key});

  @override
  State<ChatbotPage> createState() => _ChatbotPageState();
}

class _ChatbotPageState extends State<ChatbotPage> {
  final TextEditingController controller = TextEditingController();
  String response = "";

  void sendMessage() {
    setState(() {
      response = "Réponse de l'API (simulée)";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Chatbot")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(controller: controller),
            ElevatedButton(
              onPressed: sendMessage,
              child: const Text("Envoyer"),
            ),
            const SizedBox(height: 20),
            Text(response),
          ],
        ),
      ),
    );
  }
}
