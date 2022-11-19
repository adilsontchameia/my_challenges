import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.labelText,
  });
  final String labelText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textCapitalization: TextCapitalization.words,
      decoration: InputDecoration(
        hintStyle: const TextStyle(color: Colors.white),
        labelStyle: const TextStyle(color: Colors.white),
        disabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white)),
        contentPadding: const EdgeInsets.all(20.0),
        labelText: labelText,
      ),
      style: const TextStyle(
          fontSize: 14.0, color: Colors.white, fontWeight: FontWeight.bold),
    );
  }
}
