import 'package:express_clone/utils/consts.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.width,
      width: MediaQuery.of(context).size.width,
      color: splashColor,
      child: Center(
        child: Image(
          height: 150.0,
          image: AssetImage('assets/logo.png'),
        ),
      ),
    );
  }
}
