// main.dart
import 'package:express_clone/widgets/custom_num_pad.dart';
import 'package:express_clone/widgets/login_header.dart';
import 'package:express_clone/utils/consts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class PassPadAndFieldsPage extends StatefulWidget {
  const PassPadAndFieldsPage({Key key}) : super(key: key);

  @override
  _PassPadAndFieldsPageState createState() => _PassPadAndFieldsPageState();
}

class _PassPadAndFieldsPageState extends State<PassPadAndFieldsPage> {
  TextEditingController textEditingController = TextEditingController();
  String currentText = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      body: Column(
        children: [
          LoginHeader(),
          SizedBox(height: 30.0),
          Padding(
            padding: const EdgeInsets.only(left: 50.0, right: 50.0),
            child: Center(
              child: PinCodeTextField(
                length: 6,
                backgroundColor: backGroundColor,
                obscureText: true,
                hintCharacter: '●',
                textStyle: TextStyle(fontSize: 30.5),
                animationType: AnimationType.fade,
                //readOnly: true,
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.underline,
                  activeColor: backGroundColor,
                  inactiveColor: backGroundColor,
                  borderRadius: BorderRadius.circular(5),
                  fieldHeight: 50,
                  fieldWidth: 40,
                  activeFillColor: Colors.transparent,
                ),
                animationDuration: const Duration(milliseconds: 300),
                // backgroundColor: Colors.blue.shade50,
                // enableActiveFill: true,
                controller: textEditingController,
                onCompleted: (v) {
                  if (textEditingController.text.length == 6) {
                    return CupertinoActivityIndicator(
                      animating: false,
                      radius: 50.0,
                    );
                  } else {
                    debugPrint("Less than 6");
                  }

                  //customProgressIndicator();

                  /*
                  2 - 
                   FutureBuilder<String>(
                    future: null,
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        //UI
                        return null;
                      } else {
                        return CupertinoActivityIndicator();
                      }
                    },
                  );
                  */
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
          Center(child: CustomNumPad(controller: textEditingController)),
        ],
      ),
    );
  }

  Widget customProgressIndicator() {
    return Container(
      height: 80,
      width: 80,
      decoration: BoxDecoration(
          color: Colors.black, borderRadius: BorderRadius.circular(8)),
      child: Theme(
          data: ThemeData(
              cupertinoOverrideTheme: CupertinoThemeData(
            brightness: Brightness.dark,
            primaryColor: CupertinoDynamicColor.withBrightness(
              color: CupertinoColors.white,
              darkColor: CupertinoColors.white,
            ),
            barBackgroundColor: CupertinoDynamicColor.withBrightness(
              color: CupertinoColors.white,
              darkColor: CupertinoColors.white,
            ),
            scaffoldBackgroundColor: CupertinoDynamicColor.withBrightness(
              color: CupertinoColors.white,
              darkColor: CupertinoColors.white,
            ),
          )),
          child: CupertinoActivityIndicator(
            animating: true,
            radius: 20,
          )),
    );
  }
}
