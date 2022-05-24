import 'package:express_clone/utils/consts.dart';
import 'package:flutter/material.dart';

//CustomAppBar
AppBar customAppBar() {
  return AppBar(
    iconTheme: IconThemeData(color: Colors.black),
    centerTitle: true,
    backgroundColor: iconAndHeadMainColor,
    elevation: 0,
    title: Builder(
      builder: (BuildContext context) {
        return Image(
          width: 300,
          image: AssetImage('assets/logo2.png'),
        );
      },
    ),
  );
}
