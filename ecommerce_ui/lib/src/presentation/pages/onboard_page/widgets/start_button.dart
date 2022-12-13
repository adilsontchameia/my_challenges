import 'package:ecommerce_ui/src/utils/constants.dart';
import 'package:flutter/material.dart';

class StartButton extends StatelessWidget {
  const StartButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushReplacementNamed(context, bottomNav);
      },
      child: Container(
        height: 35,
        width: 120,
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(10.0))),
        child: const Center(
          child: Text('Start Shopping',
              style: TextStyle(
                  color: Color.fromRGBO(72, 39, 189, 1),
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0)),
        ),
      ),
    );
  }
}
