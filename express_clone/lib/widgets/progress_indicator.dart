import 'package:express_clone/utils/consts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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