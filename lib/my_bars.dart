// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyBars extends StatelessWidget {
  final String imagePath;
  final String imageText;
  final String imageSubtitleText;
  const MyBars(
      {Key? key,
      required this.imagePath,
      required this.imageText,
      required this.imageSubtitleText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(188, 155, 160, 156),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(imagePath),
              ),
              height: 60,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(12)),
            ),
            Column(
              children: [
                Text(
                  imageText,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(imageSubtitleText),
              ],
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.forward))
          ],
        ),
      ),
    );
  }
}
