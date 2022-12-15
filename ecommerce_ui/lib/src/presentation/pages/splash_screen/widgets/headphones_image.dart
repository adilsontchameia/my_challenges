import 'package:flutter/material.dart';

class HeadPhonesImage extends StatelessWidget {
  const HeadPhonesImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -0.2,
      alignment: Alignment.centerLeft,
      child: Opacity(
        opacity: 0.7,
        child: Align(
          alignment: Alignment.topCenter,
          child: Image.asset(
            fit: BoxFit.cover,
            height: 570,
            'assets/headphone_purple.png',
          ),
        ),
      ),
    );
  }
}
