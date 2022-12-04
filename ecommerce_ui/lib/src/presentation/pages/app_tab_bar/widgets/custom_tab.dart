import 'package:flutter/material.dart';

class CustomTab extends StatelessWidget {
  const CustomTab({Key? key, required this.text, required this.onTap})
      : super(key: key);
  final String text;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => print('Clicked'),
      child: Tab(text: text),
    );
  }
}
