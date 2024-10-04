import 'package:flutter/material.dart';

class ShareProfilePage extends StatelessWidget {
  const ShareProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Share Profile'),
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Display the image
            Image.asset(
              'assets/images/qr.jpg', // Update with your asset path
              width: 800, // Set the width of the image
              height: 600, // Set the height of the image
            ),
            // const SizedBox(height: 20.0),
            // const Text(
            //   'Share your profile here!',
            //   style: TextStyle(fontSize: 24.0),
            // ),
          ],
        ),
      ),
    );
  }
}
