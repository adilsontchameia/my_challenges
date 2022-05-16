import 'package:express_clone/utils/consts.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              height: 370 / 2,
              width: MediaQuery.of(context).size.width,
              color: splashColor,
              child: SafeArea(
                child: Center(
                  child: Text('LOGO'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
