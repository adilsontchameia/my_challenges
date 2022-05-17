import 'package:express_clone/utils/consts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(children: [
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: splashColor,
          child: Center(
            child: Image(image: AssetImage('assets/logo.png')),
          ),
          // child: customProgressIndicator(context),
        ),
      ]),
    );
  }
}
