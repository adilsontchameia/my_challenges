import 'package:express_clone/utils/consts.dart';
import 'package:express_clone/widgets/progress_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'splash_screen.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  //Solucao provisoria para tela com progress indicator
  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 10), () {
      // <-- Delay here
      setState(() {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => SplashScreen()),
        ); // <-- Code run after delay
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(children: [
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: splashColor,
          child: customProgressIndicator(context),
        ),
      ]),
    );
  }
}
