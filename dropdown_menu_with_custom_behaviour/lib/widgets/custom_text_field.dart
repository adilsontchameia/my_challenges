import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  TextFieldWidget({Key? key, required this.text, required this.icon})
      : super(key: key);
  String text;
  IconData icon;
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Colors.amber,
      decoration: InputDecoration(
        enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
          width: 1.0,
          color: Colors.grey,
        )),
        prefixIcon: Icon(
          icon,
          color: Colors.grey,
        ),
        hintText: text,
      ),
    );
  }
}
