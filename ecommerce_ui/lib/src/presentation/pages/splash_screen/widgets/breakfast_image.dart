import 'package:flutter/material.dart';

class BreakFastImage extends StatelessWidget {
  const BreakFastImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Opacity(
        opacity: 0.5,
        child: Image.asset(
          fit: BoxFit.fitHeight,
          height: 700.0,
          width: double.infinity,
          'assets/breakfast.png',
        ),
      ),
    );
  }
}
