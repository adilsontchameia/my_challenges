import 'package:flutter/material.dart';

class LogoAndDescription extends StatelessWidget {
  const LogoAndDescription({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          child: Image.asset(height: 100.0, 'assets/app_logo.png'),
        ),
        Text(
          'Loren Ipsun Loren Ipsun Loren Ipsun Loren Ipsun Loren IpsunLoren Ipsun Loren Ipsun',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 15.0,
            color: Colors.white.withOpacity(0.7),
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}