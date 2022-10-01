import 'package:flutter/material.dart';

class GenderIcon extends StatelessWidget {
  final IconData icon;
  final String newText;

  const GenderIcon({required this.icon, required this.newText});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          child: Icon(
            icon,
            size: 60,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 20),
        Container(
          child: Text(
            newText,
            style: TextStyle(
              fontSize: 25,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
