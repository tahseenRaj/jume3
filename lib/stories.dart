import 'package:flutter/material.dart';

class Stories extends StatelessWidget {
  final String name;
  const Stories(this.name);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 8, bottom: 4, right: 8, left: 8),
          height: 65,
          width: 65,
          decoration:  BoxDecoration(
            image: const DecorationImage(
              image: AssetImage('assets/face.png'),
          fit: BoxFit.fitHeight,
            ),
            shape: BoxShape.circle,
            border: Border.all(width: 2, color: Colors.deepOrange),
          ),
        ),
        SizedBox(
          width: 50,
          child: Center(
            child: Text(
              name,
              style: const TextStyle(fontSize: 13),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        )
      ],
    );
  }
}
