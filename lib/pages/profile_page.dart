import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profil"),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [

            // ===== HEADER PROFILE =====
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 30),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary.withOpacity(0.1),
              ),
              child: Column(
                children: const [
                  CircleAvatar(
                    radius: 55,
                    backgroundImage: AssetImage("images/profile.png"),
                  ),
                  SizedBox(height: 12),
                  Text(
                    "Said Ouchrif",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    "saidouchrif16@gmail.com",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // ===== USER INFO CARD =====
            _buildInfoCard(
              context,
              icon: Icons.person,
              title: "Nom complet",
              value: "Said Ouchrif",
            ),

            _buildInfoCard(
              context,
              icon: Icons.email,
              title: "Email",
              value: "saidouchrif16@gmail.com",
            ),

            _buildInfoCard(
              context,
              icon: Icons.school,
              title: "Statut",
              value: "Étudiant",
            ),

            _buildInfoCard(
              context,
              icon: Icons.location_on,
              title: "Ville",
              value: "Casablanca",
            ),

            const SizedBox(height: 30),

            // ===== EDIT BUTTON =====
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: () {
                    // future: navigation vers page edit
                  },
                  icon: const Icon(Icons.edit),
                  label: const Text("Modifier le profil"),
                ),
              ),
            ),

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  // ===== REUSABLE CARD WIDGET =====
  static Widget _buildInfoCard(
    BuildContext context, {
    required IconData icon,
    required String title,
    required String value,
  }) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      elevation: 2,
      child: ListTile(
        leading: Icon(icon, color: Theme.of(context).colorScheme.primary),
        title: Text(title),
        subtitle: Text(value),
      ),
    );
  }
}
