import 'package:flutter/material.dart';
import 'package:settings_ui/settings_ui.dart';  // <-- use this import

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool _darkMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      body: SettingsList(
        sections: [
          SettingsSection(
            title: const Text('App'),
            tiles: [
              SettingsTile.switchTile(
                title: const Text('Notifications'),
                leading: const Icon(Icons.notifications),
                initialValue: _darkMode,  // <-- updated parameter name
                onToggle: (bool value) {
                  setState(() {
                    _darkMode = value;
                  });
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
