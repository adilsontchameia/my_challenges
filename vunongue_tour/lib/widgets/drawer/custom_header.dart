import 'package:flutter/material.dart';

class CustomDrawerHeader extends StatelessWidget {
  const CustomDrawerHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 300,
        color: Colors.white,
        child: AspectRatio(
            aspectRatio: 1.5,
            child:
                Image.asset('assets/onboard-image.jpg', fit: BoxFit.fitWidth)));
  }
}
