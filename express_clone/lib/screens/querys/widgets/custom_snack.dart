  import 'package:express_clone/utils/consts.dart';
import 'package:flutter/material.dart';

void showCustomSnackBar(BuildContext context) {
    final snackBar = SnackBar(
      content: Text(
        'IBAN copiado para o seu clipboard.',
        textAlign: TextAlign.center,
        style: TextStyle(
            color: numPadColor, fontWeight: FontWeight.bold, wordSpacing: 2),
      ),
      backgroundColor: Colors.white.withOpacity(0.90),
      elevation: 0.90,
      behavior: SnackBarBehavior.floating,
      //shape: StadiumBorder(),
      width: 380,
      duration: Duration(seconds: 2),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }