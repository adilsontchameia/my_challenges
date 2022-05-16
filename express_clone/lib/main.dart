import 'package:express_clone/src/calc/pass_fields.dart';
import 'package:express_clone/src/calc/login_page.dart';

import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: HomePage(),
      home: PassPadAndFieldsPage(),
    );
  }
}
