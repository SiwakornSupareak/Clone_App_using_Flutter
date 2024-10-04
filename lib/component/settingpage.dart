import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(15.0),
        children: [
          _buildSettingsItem(
            icon: Icons.account_circle,
            label: 'Account',
            onTap: () {
              // Handle account settings tap
            },
          ),
          const SizedBox(height: 16.0), // Space between items
          _buildSettingsItem(
            icon: Icons.notifications,
            label: 'Notifications',
            onTap: () {
              // Handle notifications settings tap
            },
          ),
          const SizedBox(height: 16.0), // Space between items
          _buildSettingsItem(
            icon: Icons.security,
            label: 'Privacy & Security',
            onTap: () {
              // Handle privacy & security settings tap
            },
          ),
          const SizedBox(height: 16.0), // Space between items
          _buildSettingsItem(
            icon: Icons.help,
            label: 'Help',
            onTap: () {
              // Handle help settings tap
            },
          ),
          const SizedBox(height: 16.0), // Space between items
          _buildSettingsItem(
            icon: Icons.language,
            label: 'Language',
            onTap: () {
              // Handle language settings tap
            },
          ),
        ],
      ),
    );
  }

  Widget _buildSettingsItem({
    required IconData icon,
    required String label,
    required VoidCallback onTap,
  }) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 0.0),
      padding: const EdgeInsets.symmetric(vertical: 0.0),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 255, 225, 235),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 20.0),
        title: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, size: 30),
              const SizedBox(width: 10), // Space between icon and text
              Text(label),
            ],
          ),
        ),
        onTap: onTap,
        tileColor: Colors.transparent, // Transparent to use the Container's color
      ),
    );
  }
}
