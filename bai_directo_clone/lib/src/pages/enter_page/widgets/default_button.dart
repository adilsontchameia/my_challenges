import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key? key,
    required this.onTap,
    required this.text,
    required this.color,
    required this.textColor,
  }) : super(key: key);
  final VoidCallback onTap;
  final String text;
  final Color color, textColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
          height: 45.0,
          //  width: 200.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0), color: color),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                text,
                style: TextStyle(
                    color: textColor,
                    fontSize: 12.0,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(width: 2.5),
              const Icon(
                Icons.arrow_forward,
                color: Colors.white,
              ),
            ],
          )),
    );
  }
}
