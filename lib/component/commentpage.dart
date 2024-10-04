import 'package:flutter/material.dart';

class CommentsPage extends StatelessWidget {
  const CommentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 0.0), // Adjust left padding as needed
          child: Text(
            'Comments',
            style: TextStyle(color: Colors.white), // Text color changed to white
          ),
        ),
        backgroundColor: Colors.black, // Changed to black
        elevation: 0,
        centerTitle: false, // Disable center title for custom padding
        iconTheme: const IconThemeData(color: Colors.white), // Set back icon color to white
      ),
      body: const Center(
        child: Text(
          'No comments yet...',
          style: TextStyle(fontSize: 15, color: Colors.black),
        ),
      ),
    );
  }
}
