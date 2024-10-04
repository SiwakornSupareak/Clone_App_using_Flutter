import 'package:clone_web/component/commentpage.dart';
import 'package:clone_web/component/locationpage.dart'; // Import the LocationPage
import 'package:clone_web/component/contactpage.dart'; // Import the ContactPage
import 'package:flutter/material.dart';

class PostCard extends StatefulWidget {
  final String postImage;
  final String backgroundImage;
  final String username;
  final String location;
  final String caption;

  const PostCard({
    required this.postImage,
    required this.backgroundImage,
    required this.username,
    required this.location,
    required this.caption,
    super.key,
  });

  @override
  _PostCardState createState() => _PostCardState();
}

class _PostCardState extends State<PostCard> {
  bool _isLiked = false; // Track like state
  bool _isBookmarked = false; // Track bookmark state

  // Function to navigate to the LocationPage
  void _onLocationTap() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => LocationsPage(location: widget.location)),
    );
  }

  // Function to navigate to the ContactPage
  void _onShareTap() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ContactPage()),
    );
  }

  // Function to handle actions from the three dots menu
  void _onMenuItemSelected(String value) {
    switch (value) {
      case 'edit':
        print('Edit tapped');
        break;
      case 'report':
        print('Report tapped');
        break;
      case 'save':
        print('Save tapped');
        break;
      case 'delete':
        print('Delete tapped');
        break;
      default:
        print('Unknown action');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5, // Adds shadow for a better look
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _buildHeader(),
          _buildPostImage(),
          _buildActions(),
          _buildLikes(),
          _buildCaption(),
          _buildViewComments(),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(widget.backgroundImage),
              ),
              const SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(widget.username),
                  InkWell(
                    onTap: _onLocationTap,
                    child: Text(
                      widget.location,
                      style: const TextStyle(color: Colors.blue),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const Spacer(),
          PopupMenuButton<String>(
            icon: const Icon(Icons.more_vert),
            onSelected: _onMenuItemSelected,
            itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
              const PopupMenuItem<String>(
                value: 'favorites',
                child: Text('Add to favorites'),
              ),
              const PopupMenuItem<String>(
                value: 'about',
                child: Text('About this account'),
              ),
              const PopupMenuItem<String>(
                value: 'save',
                child: Text('Save'),
              ),
              const PopupMenuItem<String>(
                value: 'report',
                child: Text('Report'),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildPostImage() {
    return Center(
      child: SizedBox(
        width: double.infinity,
        child: Image.asset(
          widget.postImage,
          fit: BoxFit.cover,
          height: 500,
        ),
      ),
    );
  }

  Widget _buildActions() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: <Widget>[
          InkWell(
            onTap: () {
              setState(() {
                _isLiked = !_isLiked; // Toggle like state
              });
            },
            child: Icon(
              _isLiked ? Icons.favorite : Icons.favorite_border,
              color: _isLiked ? Colors.red : Colors.black,
            ),
          ),
          const SizedBox(width: 10),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const CommentsPage()),
              );
            },
            child: const Icon(Icons.comment_outlined),
          ),
          const SizedBox(width: 10),
          InkWell(
            onTap: _onShareTap, // Now navigates to ContactPage
            child: const Icon(Icons.send),
          ),
          const Spacer(),
          InkWell(
            onTap: () {
              setState(() {
                _isBookmarked = !_isBookmarked; // Toggle bookmark state
              });
            },
            child: Icon(
              _isBookmarked ? Icons.bookmark : Icons.bookmark_border,
              color: _isBookmarked ? Colors.blue : Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLikes() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 5.0),
      child: Text('Liked by user1, user2 and others'),
    );
  }

  Widget _buildCaption() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 5.0),
      child: Text(widget.caption),
    );
  }

  Widget _buildViewComments() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 5.0),
      child: Text('View all comments...'),
    );
  }
}
