// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String imagePath;
  final String imageText;
  const MyButton({Key? key, required this.imagePath, required this.imageText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 80,
          width: 80,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: IconButton(
              onPressed: () {},
              icon: Image.asset(
                imagePath,
              ),
            ),
          ),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 255, 255, 255),
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(158, 0, 0, 0),
                blurRadius: 20,
                spreadRadius: 2,
              ),
            ],
          ),
        ),
        SizedBox(height: 5),
        Text(
          imageText,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
