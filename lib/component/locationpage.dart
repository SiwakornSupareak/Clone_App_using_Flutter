import 'package:flutter/material.dart';

class LocationsPage extends StatelessWidget {
  const LocationsPage({super.key, required String location});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Locations',
          style: TextStyle(color: Colors.white), // Title color set to white
        ),
        backgroundColor: Colors.black, // AppBar color set to black
        iconTheme: const IconThemeData(color: Colors.white), // Icons color set to white
        // Optional: Set the text theme for the AppBar
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 20), // Title text style
      ),
      body: Center(
        child: Text(
          'Locations go here...',
          style: TextStyle(fontSize: 15, color: Colors.black.withOpacity(0.8)),
        ),
      ),
    );
  }
}
