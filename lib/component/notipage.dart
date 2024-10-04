import 'package:flutter/material.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Notifications',
          style: TextStyle(color: Colors.white), // Set title color to white
        ),
        backgroundColor: Colors.black, // Change AppBar color to black
      ),
      body: Center(
        child: Text(
          'No notifications',
          style: TextStyle(fontSize: 15, color: Colors.black.withOpacity(0.8)),
        ),
      ),
    );
  }
}
