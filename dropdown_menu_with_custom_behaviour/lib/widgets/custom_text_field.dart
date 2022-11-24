import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  TextFieldWidget(
      {Key? key,
      required this.text,
      required this.icon,
      required this.isNumeric})
      : super(key: key);
  String text;
  IconData icon;
  bool isNumeric;
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Colors.amber,
      keyboardType: isNumeric ? TextInputType.number : TextInputType.name,
      decoration: InputDecoration(
        enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
          width: 1.0,
          color: Colors.grey,
        )),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
        prefixIcon: Icon(
          icon,
          color: Colors.grey,
        ),
        hintText: text,
      ),
    );
  }
}
