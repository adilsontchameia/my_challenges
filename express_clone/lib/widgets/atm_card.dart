import 'package:flutter/material.dart';

class AtmCard extends StatelessWidget {
  const AtmCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250.0,
      width: 360.0,
      decoration: BoxDecoration(
        color: Colors.blue.shade400,
        borderRadius: BorderRadius.circular(20.0),
      ),
    );
  }
}
