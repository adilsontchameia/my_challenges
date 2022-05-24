import 'package:express_clone/utils/consts.dart';
import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final String text;
  final IconData icon;
  final Function function;
  const CustomListTile(
      {Key? key,
      required this.text,
      required this.icon,
      required this.function})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: numPadColor, size: 25.0),
      title: Transform(
        transform: Matrix4.translationValues(-20, 0.0, 0.0),
        child: Text(text,
            style: TextStyle(
                color: splashColor,
                fontWeight: FontWeight.bold,
                fontSize: 15.0)),
      ),
      onTap: () => function,
    );
  }
}
