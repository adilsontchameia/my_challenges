import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    Key? key,
    required this.initialValue,
    required this.hintText,
    required this.validatorText,
    required this.icon,
  }) : super(key: key);
  final String initialValue;
  final String hintText;
  final String validatorText;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autocorrect: true,
      textCapitalization: TextCapitalization.words,
      initialValue: initialValue,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(20.0),
        prefixIcon: Padding(
          padding: const EdgeInsets.all(10.0),
          child: FaIcon(icon),
        ),
        hintText: hintText,
        border: InputBorder.none,
      ),
      style: const TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.w600,
      ),
      validator: (placeName) {
        if (placeName!.length < 3) {
          return validatorText;
        } else {
          return null;
        }
      },
    );
  }
}