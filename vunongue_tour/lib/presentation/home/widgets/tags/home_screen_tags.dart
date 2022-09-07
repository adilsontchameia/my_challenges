import 'package:flutter/material.dart';

class HomeScreenTags extends StatelessWidget {
  HomeScreenTags({Key? key, required this.text}) : super(key: key);
  String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Align(
          alignment: Alignment.topLeft,
          child: Text(text,
              style: const TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 20.0))),
    );
  }
}