import 'package:flutter/material.dart';
import 'package:smart_student_assistant_rags/pages/chatbot_page.dart';
import '../widgets/app_drawer.dart';

/// Page d'accueil principale de l'application
/// Elle présente l'université, un message de bienvenue
/// et introduit l'assistant IA destiné à aider l'étudiant
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Accueil"), centerTitle: true),

      // Menu latéral
      drawer: const AppDrawer(),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ===== IMAGE DE L'UNIVERSITÉ =====
            Container(
              width: double.infinity,
              height: 200,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/ecole-image.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            const SizedBox(height: 20),

            // ===== MESSAGE DE BIENVENUE =====
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "Bienvenue dans Smart Student Assistant",
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),

            const SizedBox(height: 10),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "Cette application a été conçue pour accompagner les étudiants "
                "dans leur parcours universitaire et faciliter l'accès aux informations.",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),

            const SizedBox(height: 25),

            // ===== SECTION ASSISTANT IA =====
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Card(
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: const [
                          Icon(Icons.smart_toy, size: 28),
                          SizedBox(width: 8),
                          Text(
                            "Assistant IA",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 10),

                      const Text(
                        "Si vous avez des questions concernant vos études, "
                        "les cours, les examens ou tout autre sujet, "
                        "vous pouvez discuter directement avec notre assistant intelligent.\n\n"
                        "L'assistant IA a été spécialement conçu pour vous aider "
                        "et répondre à toutes vos questions.",
                        style: TextStyle(fontSize: 16),
                      ),

                      const SizedBox(height: 16),

                      // Bouton vers la page Chatbot
                      Align(
                        alignment: Alignment.centerRight,
                        child: ElevatedButton.icon(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const ChatbotPage(),
                              ),
                            );
                          },
                          icon: const Icon(Icons.chat),
                          label: const Text("Discuter avec l'IA"),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
