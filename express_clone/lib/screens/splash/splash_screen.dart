import 'package:express_clone/utils/consts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(fit: StackFit.expand, alignment: Alignment.center, children: [
        Padding(
    padding: const EdgeInsets.all(200),
    child: LoadingIndicator(
      indicatorType: Indicator.lineSpinFadeLoader,

      /// Required, The loading type of the widget
      colors: const [splashColor],
      backgroundColor: Colors.black.withOpacity(0.20),

      /// Optional, The color collections
      strokeWidth: 2,
    ),
        ),
      ]);
  }
}
