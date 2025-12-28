import 'package:flutter/material.dart';
import '../theme/theme_controller.dart';

/// Page des paramètres de l'application
class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool notificationsEnabled = true;
  String selectedLanguage = "Français";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Paramètres"),
        centerTitle: true,
      ),

      body: ListView(
        children: [

          // ===== THEME MODE =====
          SwitchListTile(
            title: const Text("Mode sombre"),
            subtitle: const Text("Activer le thème sombre"),
            value: ThemeController.themeMode.value == ThemeMode.dark,
            onChanged: (value) {
              ThemeController.themeMode.value =
                  value ? ThemeMode.dark : ThemeMode.light;
            },
          ),

          const Divider(),

          // ===== NOTIFICATIONS =====
          SwitchListTile(
            title: const Text("Notifications"),
            subtitle: const Text("Recevoir des notifications"),
            value: notificationsEnabled,
            onChanged: (value) {
              setState(() {
                notificationsEnabled = value;
              });
            },
          ),

          const Divider(),

          // ===== LANGUAGE =====
          ListTile(
            title: const Text("Langue"),
            subtitle: Text(selectedLanguage),
            trailing: DropdownButton<String>(
              value: selectedLanguage,
              items: const [
                DropdownMenuItem(
                  value: "Français",
                  child: Text("Français"),
                ),
                DropdownMenuItem(
                  value: "English",
                  child: Text("English"),
                ),
                DropdownMenuItem(
                  value: "Arabic",
                  child: Text("العربية"),
                ),
              ],
              onChanged: (value) {
                setState(() {
                  selectedLanguage = value!;
                });
              },
            ),
          ),

          const Divider(),

          // ===== ABOUT =====
          ListTile(
            leading: const Icon(Icons.info),
            title: const Text("À propos"),
            subtitle: const Text("Informations sur l'application"),
            onTap: () {
              showAboutDialog(
                context: context,
                applicationName: "Smart Student Assistant",
                applicationVersion: "1.0.0",
                applicationLegalese:
                    "Application Flutter pédagogique\nDéveloppée pour les étudiants.",
              );
            },
          ),
        ],
      ),
    );
  }
}
