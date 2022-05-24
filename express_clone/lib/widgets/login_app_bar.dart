import 'dart:math';

import 'package:express_clone/utils/consts.dart';
import 'package:flutter/material.dart';

class LoginAppBar extends StatelessWidget {
  final double? size;
  const LoginAppBar({
    Key? key,
    this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              height: 300 / 2,
              width: MediaQuery.of(context).size.width,
              color: iconAndHeadMainColor,
              child: Column(
                children: [
                  Stack(
                    children: [
                      Positioned(
                        top: -100,
                        right: -100,
                        child: Transform.rotate(
                          angle: -pi / 10.0,
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                              height: 480,
                              width: 270.0,
                              color: Colors.white.withOpacity(.15),
                            ),
                          ),
                        ),
                      ),
                      Image(
                        height: 150.0,
                        image: AssetImage('assets/logo.png'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
