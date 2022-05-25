import 'package:express_clone/screens/home/home_screen.dart';
import 'package:express_clone/utils/consts.dart';
import 'package:flutter/material.dart';

class OkButton extends StatelessWidget {
  const OkButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        primary: iconAndHeadMainColor,
        elevation: 0,
      ),
      onPressed: () => Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => HomePage())),
      child: Center(
        child: Text(
          'OK',
          style: const TextStyle(
            // fontFamily: 'RobotoSlab',
            fontWeight: FontWeight.w600,
            decoration: TextDecoration.underline,
            color: okButtonTextColor,
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}
