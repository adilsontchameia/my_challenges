// main.dart
import 'package:express_clone/widgets/custom_fields/pin_code_fields.dart';
import 'package:express_clone/widgets/custom_fields/animation.dart';
import 'package:express_clone/widgets/custom_fields/pin_theme.dart';
import 'package:express_clone/widgets/custom_num_pad.dart';
import 'package:express_clone/widgets/login_header.dart';
import 'package:express_clone/utils/consts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController textEditingController = TextEditingController();
  String currentText = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            LoginHeader(),
            SizedBox(height: 30.0),
            Padding(
              padding: const EdgeInsets.only(left: 50.0, right: 50.0),
              child: Center(
                child: PinCodeTextFieldAd(
                  length: 6,
                  autoFocus: false,
                  autoUnfocus: false,
                  backgroundColor: backGroundColor,
                  obscureText: true,
                  // readOnly: true,
                  hintCharacter: '●',
                  cursorColor: Colors.transparent,
                  textStyle: TextStyle(fontSize: 30.5),
                  animationType: AnimationTypeOne.fade,
                  enabled: false,
                  pinTheme: PinThemeOne(
                    shape: PinCodeFieldShapeOne.underline,
                    selectedColor: backGroundColor,
                    inactiveFillColor: backGroundColor,
                    inactiveColor: backGroundColor,
                    // disabledColor: backGroundColor,
                    borderWidth: 0.0,
                    borderRadius: BorderRadius.circular(5),
                    fieldHeight: 50,
                    fieldWidth: 40,
                    activeFillColor: Colors.transparent,
                  ),
                  animationDuration: const Duration(milliseconds: 300),
                  controller: textEditingController,
                  onCompleted: (v) {
                    return CupertinoActivityIndicator(
                      animating: false,
                      radius: 50.0,
                    );
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
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'PIN do serviço ',
                  style: TextStyle(color: titlePadColor, fontSize: 12),
                ),
                Text(
                  'MULTICAIXA',
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.50),
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 10.0),
            Center(
              child: CustomNumPad(
                controller: textEditingController,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
