import 'package:express_clone/utils/consts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:nuts_activity_indicator/nuts_activity_indicator.dart';

Widget customProgressIndicator(BuildContext context) {
  double width = MediaQuery.of(context).size.width;
  double height = MediaQuery.of(context).size.height;

  return Container(
    height: height,
    width: width,
    color: Colors.black.withOpacity(.75),
    child: Center(
      child: NutsActivityIndicator(
        radius: 13,
        activeColor: iconAndHeadMainColor,
        inactiveColor: iconAndHeadMainColor.withOpacity(.10),
        tickCount: 8,
        startRatio: 0.5,
        animationDuration: Duration(milliseconds: 300),
      ),
    ),
  );
}
