import 'package:flutter/material.dart';
import 'package:instagramclone/models/posts.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Instagramy",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: Icon(
          Icons.camera_alt,
          color: Colors.black,
        ),
        actions: <Widget>[Icon(Icons.send, color: Colors.black)],
      ),
      body: UserPosts()
    );
  }
}

class UserPosts extends StatefulWidget {
  @override
  _UserPostsState createState() => _UserPostsState();
}

class _UserPostsState extends State<UserPosts> {
  //creating list of user posts
  List<Post> posts = [
    Post('kendra88', 'Berlin, Germany', 'images/germany.png'),
    Post('killerFlow', 'Accra, Ghana', 'images/kenya.png'),
    Post('koreanGimma', 'Nijah, S Korea', 'images/south_korea.png'),
    Post('niqqaman', 'Compton, USA', 'images/usa.png'),
    Post('britishsapp99', 'New York, London', 'images/uk.png'),
    Post('greekFreak', 'Athens, Greece', 'images/greece.png'),
    Post('shadowkiller', 'Down Town, Indonesia', 'images/indonesia.png'),
    Post('mummymonster', 'Central, Egypt', 'images/egypt.png')
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: posts.length,
        itemBuilder: (context, index) {
          return PostCard(
            posts: posts[index],
          );
        });
  }
}

class PostCard extends StatefulWidget {
  Post posts;

  PostCard({this.posts});

  @override
  _PostCardState createState() => _PostCardState(posts: posts);
}

class _PostCardState extends State<PostCard> {
  Post posts;

  _PostCardState({this.posts});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 340.0,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Card(
          elevation: 1.0,
          child: Wrap(
            children: <Widget>[
              ListTile(
                leading: Image.asset(posts.image),
                title: Text(posts.username),
                subtitle: Text(posts.location),
              ),
              Image.asset(posts.image, fit: BoxFit.cover,)
            ],
          )
        ),
      ),
    );
  }
}
