import 'package:flutter/material.dart';

Widget customProgressIndicator(BuildContext context) {
  double width = MediaQuery.of(context).size.width;
  double height = MediaQuery.of(context).size.height;

  return Container(
    height: height,
    width: width,
    color: Colors.black.withOpacity(.75),
    child: Center(
      child: CircularProgressIndicator(),
    ),
  );
}

/*

NutsActivityIndicator(
        radius: 13,
        activeColor: iconAndHeadMainColor,
        inactiveColor: iconAndHeadMainColor.withOpacity(.10),
        tickCount: 8,
        startRatio: 0.5,
        animationDuration: Duration(milliseconds: 300),
      ),
      */
