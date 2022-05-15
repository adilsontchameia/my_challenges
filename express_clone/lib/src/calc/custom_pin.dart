import 'package:express_clone/utils/consts.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class CustomPin extends StatefulWidget {
  final TextEditingController controller;

  const CustomPin({Key key, @required this.controller}) : super(key: key);

  @override
  _CustomPinState createState() => _CustomPinState();
}

String currentText = "";

class _CustomPinState extends State<CustomPin> {
  @override
  Widget build(BuildContext context) {
    var controller;
    return Padding(
      padding: const EdgeInsets.all(30),
      child: Center(
        child: PinCodeTextField(
          length: 6,
          backgroundColor: backGroundColor,
          obscureText: true,
          hintCharacter: '●',
          animationType: AnimationType.fade,
          pinTheme: PinTheme(
            shape: PinCodeFieldShape.box,
            borderRadius: BorderRadius.circular(5),
            fieldHeight: 50,
            fieldWidth: 40,
            activeFillColor: Colors.transparent,
          ),
          animationDuration: const Duration(milliseconds: 300),
          // backgroundColor: Colors.blue.shade50,
          // enableActiveFill: true,
          controller: controller,
          onCompleted: (v) {
            debugPrint("Completed");
          },
          onChanged: (value) {
            debugPrint(value);
            setState(() {
              currentText = value;
            });
          },
          beforeTextPaste: (text) {
            return true;
          },
          appContext: context,
        ),
      ),
    );
  }
}
