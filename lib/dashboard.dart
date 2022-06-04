import 'package:flutter/material.dart';
import 'stories.dart';
import 'square.dart';

class Dashboard extends StatelessWidget {
  Dashboard({Key? key}) : super(key: key);

  final List _stories = [
    'Jennifer Johnson',
    'Natalie Robinson',
    'John Ferguson',
    'Samuel Patterson',
    'Jasmine James',
    'Patricia Hamilton',
    'Michael Hensley',
    'Elijah Fisher',
  ];

  final List _posts = [
    'Post 1',
    'Post 2',
    'Post 3',
    'Post 4',
    'Post 5',
    'Post 6',
    'Post 7',
    'Post 8'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 150,
        leading: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Image.asset(
              'assets/logo.png'),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        children: [
          Container(
            color: Colors.grey[300],
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: _stories.length,
              itemBuilder: ((context, index) {
                return Stories(_stories[index]);
              }),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _posts.length,
              itemBuilder: ((context, index) {
                return MySquare(_posts[index]);
              }),
            ),
          ),
        ],
      ),
    );
  }
}
