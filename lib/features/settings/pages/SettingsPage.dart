import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Text("Einstellungen",
              style: Theme.of(context).textTheme.headlineMedium),
          ListTile(
            leading: const Icon(Icons.code),
            title: const Text("Code"),
            subtitle: const Text("Github Repository"),
            onTap: () => launchUrlString("https://github.com/Flajt/d-day"),
          ),
          ListTile(
            leading: const Icon(Icons.feedback),
            title: const Text("Feedback"),
            subtitle: const Text("Fehler oder verbesserungs Vorschläge?"),
            onTap: () async {
              await launchUrlString("https://tally.so/r/wAvPll");
            },
          ),
          const AboutListTile(
            applicationLegalese: "Made with ❤️ in Berlin by Flajt",
          )
        ],
      )),
    );
  }
}
