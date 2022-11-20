import 'package:flutter/material.dart';

class CustomCircularIcon extends StatelessWidget {
  const CustomCircularIcon({
    Key? key,
    required this.icon,
  }) : super(key: key);
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      width: 60.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(35.0),
        boxShadow: [
          BoxShadow(
            blurRadius: 1,
            spreadRadius: 2,
            offset: const Offset(0.0, 2),
            color: Colors.black.withOpacity(0.1),
          )
        ],
      ),
      child: Icon(
        size: 30.0,
        icon,
        color: Colors.orange,
      ),
    );
  }
}