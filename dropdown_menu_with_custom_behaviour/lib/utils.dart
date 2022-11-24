import 'package:flutter/cupertino.dart';

Size screenSize(BuildContext context) {
  final screenSize = MediaQuery.of(context).size;
  return screenSize;
}
