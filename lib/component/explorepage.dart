import 'package:clone_web/component/postcard2.dart'; // Adjust import based on your structure
import 'package:flutter/material.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Explore',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 3, // Adjust for 3 columns
          childAspectRatio: 1, // Aspect ratio of the grid items
          children: [
            _buildPostCard(context, 'assets/images/feixiao_post.jpg', 'assets/images/feixiao.jpg', 'Feixiao', 'Bangkok, Thailand', 'Feixiao: Hey there!'),
            _buildPostCard(context, 'assets/images/ruanmei_post.jpg', 'assets/images/ruanmei.jpg', 'Ruan Mei', 'Bangkok, Thailand', 'Ruan Mei: Hello...'),
            _buildPostCard(context, 'assets/images/himeko_post.jpg', 'assets/images/himeko.png', 'Himeko', 'Bangkok, Thailand', 'Himeko: Nice to meet you.'),
            // Add more posts as needed
          ],
        ),
      ),
    );
  }

  Widget _buildPostCard(BuildContext context, String postImage, String backgroundImage, String username, String location, String caption) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PostCard2(
              postImage: postImage,
              backgroundImage: backgroundImage,
              username: username,
              location: location,
              caption: caption,
            ),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Image.asset(
            postImage,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
