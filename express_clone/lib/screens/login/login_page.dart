import 'package:express_clone/screens/home/home_screen.dart';
import 'package:express_clone/utils/consts.dart';
import 'package:express_clone/utils/finger_print.dart';
import 'package:express_clone/widgets/login_app_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'widgets/custom_num_pad.dart';
import 'widgets/password_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController textEditingController = TextEditingController();
  String currentText = "";

  //Read biometric auth on start
  @override
  void initState() {
    super.initState();
    checkAuthentication();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            LoginAppBar(),
            SizedBox(height: 30.0),
            Padding(
                padding: const EdgeInsets.only(left: 50.0, right: 50.0),
                child: Center(
                    child: PinCodeField(
                  controller: textEditingController,
                ))),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'PIN do serviço ',
                  style: TextStyle(
                      color: titlePadColor,
                      fontSize: 13,
                      fontWeight: FontWeight.w600),
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

  checkAuthentication() async {
    final isAuthenticated = await LocalAuthApi.authenticate();

    if (isAuthenticated) {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => HomePage()),
      );
    }
  }
}
