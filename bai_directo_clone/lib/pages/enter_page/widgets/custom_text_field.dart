import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField(
      {super.key, required this.labelText, required this.isNumeric});
  final String labelText;
  final bool isNumeric;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    if (!widget.isNumeric) {
      return TextFormField(
        textCapitalization: TextCapitalization.words,
        decoration: InputDecoration(
          labelStyle: const TextStyle(
            fontSize: 15.0,
            color: Colors.white,
          ),
          contentPadding: EdgeInsets.zero,
          disabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white)),
          labelText: widget.labelText,
        ),
        style: const TextStyle(
          fontSize: 30.0,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      );
    } else {
      return TextFormField(
        textCapitalization: TextCapitalization.words,
        keyboardType: TextInputType.number,
        obscureText: _isObscure,
        decoration: InputDecoration(
          suffixIcon: IconButton(
            color: Colors.white,
            icon: Icon(
              _isObscure ? Icons.visibility : Icons.visibility_off,
            ),
            onPressed: () {
              setState(() {
                _isObscure = !_isObscure;
              });
            },
          ),
          labelStyle: const TextStyle(
            color: Colors.white,
            fontSize: 15.0,
          ),
          contentPadding: EdgeInsets.zero,
          disabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white)),
          labelText: widget.labelText,
        ),
        style: const TextStyle(
          fontSize: 40.0,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      );
    }
  }
}
