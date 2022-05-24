import 'package:express_clone/utils/consts.dart';
import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final IconData icon;
  final String text;
  const RoundedButton({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 115.0,
      width: 115.0,
      decoration: BoxDecoration(
        // color: Colors.blue.shade400,
        border: Border.all(color: numPadColor.withOpacity(0.60)),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.0),
          Icon(icon, color: splashColor, size: 55.0),
          SizedBox(height: 15.0),
          Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 13.0,
              fontFamily: 'RobotoSlab',
              color: numPadColor.withOpacity(0.55),
            ),
          )
        ],
      ),
    );
  }
}
