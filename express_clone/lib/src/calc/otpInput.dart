// Create an input widget that takes only one digit
import 'package:flutter/material.dart';

// Create an input widget that takes only one digit
class OtpInput extends StatelessWidget {
  final TextEditingController controller;
  //final bool autoFocus;
  const OtpInput(this.controller, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 50,
      child: TextField(
        //  autofocus: autoFocus,
        showCursor: false,
        obscureText: true,
        readOnly: true,
        obscuringCharacter: '●',
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        controller: controller,
        maxLength: 1,
        style: TextStyle(fontSize: 35.0),
        decoration: new InputDecoration(
            hintText: '●●●', border: InputBorder.none, counterText: ''),
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
      ),
    );
  }
}
