import 'package:express_clone/src/screens/login/widgets/custom_fields/animation.dart';
import 'package:express_clone/src/screens/login/widgets/custom_fields/pin_code_fields.dart';
import 'package:express_clone/src/screens/login/widgets/custom_fields/pin_theme.dart';
import 'package:express_clone/utils/consts.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PinCodeField extends StatefulWidget {
  TextEditingController controller = TextEditingController();
  PinCodeField({required this.controller});

  @override
  State<PinCodeField> createState() => _PinCodeFieldState();
}

class _PinCodeFieldState extends State<PinCodeField> {
  @override
  Widget build(BuildContext context) {
    return PinCodeTextFieldAd(
      length: 6,
      autoFocus: false,
      autoUnfocus: false,
      backgroundColor: backGroundColor,
      obscureText: true,
      hintCharacter: '●',
      cursorColor: Colors.transparent,
      textStyle: TextStyle(fontSize: 30.5),
      animationType: AnimationTypeOne.fade,
      enabled: false,
      pinTheme: PinThemeOne(
        shape: PinCodeFieldShapeOne.none,
        borderWidth: 0.0,
        borderRadius: BorderRadius.circular(5),
        fieldHeight: 50,
        fieldWidth: 40,
      ),
      animationDuration: const Duration(milliseconds: 300),
      controller: widget.controller,
      onCompleted: (v) {
        setState(() {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text('title'),
                content: Text('message'),
              );
            },
          );
        });
      },
      onChanged: (value) {
        debugPrint(value);
        /*
 setState(() {
          widget.currentText = value;
        });
        */
      },
      appContext: context,
    );
  }
}
