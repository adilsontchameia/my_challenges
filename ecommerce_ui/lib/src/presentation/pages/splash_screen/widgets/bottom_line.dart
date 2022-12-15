import 'package:flutter/material.dart';

class BottomLine extends StatelessWidget {
  const BottomLine({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Container(
          height: 1.0,
          width: 120.0,
          color: Colors.white,
        ),
      ),
    );
  }
}