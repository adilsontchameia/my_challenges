import 'package:flutter/material.dart';

class SwitchButton extends StatelessWidget {
  final String text;
  final Color color;
  const SwitchButton({
    Key? key,
    required this.text,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 190,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: color,
      ),
      child: Center(
          child: Text(
        text,
        style: TextStyle(
          decoration: TextDecoration.underline,
          fontSize: 25.0,
          color: Colors.white,
        ),
      )),
    );
  }
}