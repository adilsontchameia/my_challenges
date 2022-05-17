import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget customProgressIndicator() {
  return Container(
    height: 80,
    width: 80,
    decoration: BoxDecoration(
        color: Colors.black, borderRadius: BorderRadius.circular(8)),
    child: Theme(
        data: ThemeData(
            cupertinoOverrideTheme: CupertinoThemeData(
          brightness: Brightness.dark,
          primaryColor: CupertinoDynamicColor.withBrightness(
            color: CupertinoColors.white,
            darkColor: CupertinoColors.white,
          ),
          barBackgroundColor: CupertinoDynamicColor.withBrightness(
            color: CupertinoColors.white,
            darkColor: CupertinoColors.white,
          ),
          scaffoldBackgroundColor: CupertinoDynamicColor.withBrightness(
            color: CupertinoColors.white,
            darkColor: CupertinoColors.white,
          ),
        )),
        child: CupertinoActivityIndicator(
          animating: true,
          radius: 20,
        )),
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