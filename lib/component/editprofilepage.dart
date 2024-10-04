import 'package:flutter/material.dart';

class EditProfilePage extends StatefulWidget {
  final Color buttonColor;

  const EditProfilePage({super.key, this.buttonColor = Colors.blue});

  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();

  @override
  void initState() {
    super.initState();
    // Pre-fill with current name and username
    _nameController.text = "Siwakorn Supareak"; 
    _usernameController.text = "Stelle"; 
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Profile'),
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Username',
              style: TextStyle(fontSize: 18.0),
            ),
            TextField(
              controller: _nameController,
              decoration: const InputDecoration(
                hintText: 'Enter your full name',
              ),
            ),
            const SizedBox(height: 20.0),
            const Text(
              'Profile name',
              style: TextStyle(fontSize: 18.0),
            ),
            TextField(
              controller: _usernameController,
              decoration: const InputDecoration(
                hintText: 'Enter your username',
              ),
            ),
            const SizedBox(height: 20.0),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white, backgroundColor: widget.buttonColor, // Text color
                ),
                onPressed: () {
                  // Handle save action (e.g., save the new name and username)
                  Navigator.pop(context, {
                    'name': _nameController.text,
                    'username': _usernameController.text,
                  });
                },
                child: const Text('Save Changes'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
