import 'package:flutter/material.dart';

class HomeMainBanner extends StatelessWidget {
  const HomeMainBanner({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.4,
      width: double.infinity,
      color: const Color.fromRGBO(0, 163, 224, 1),
    );
  }
}