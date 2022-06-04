import 'package:flutter/material.dart';

class MySquare extends StatelessWidget {
  final String child;
  const MySquare(this.child);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Container(
        height: 400,
        color: Color(0xFF8FDDFF),
        child: Center(child: Text(child, style: TextStyle(fontSize: 20),)),
      ),
    );
  }
}
