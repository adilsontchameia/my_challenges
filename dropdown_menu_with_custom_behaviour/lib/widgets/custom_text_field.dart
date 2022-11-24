import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const TextField(
      cursorColor: Colors.amber,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
          width: 1.0,
          color: Colors.grey,
        )),
        prefixIcon: Icon(
          Icons.person,
          color: Colors.grey,
        ),
        hintText: "Full Name",
      ),
    );
  }
}