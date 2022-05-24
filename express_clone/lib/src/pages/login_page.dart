import 'package:express_clone/src/pages/home_screen.dart';
import 'package:express_clone/src/pages/loading.dart';
import 'package:express_clone/utils/consts.dart';
import 'package:express_clone/utils/local_auth.dart';
import 'package:express_clone/widgets/custom_num_pad.dart';
import 'package:express_clone/widgets/login_header.dart';
import 'package:express_clone/widgets/password_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
            LoginHeader(),
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
