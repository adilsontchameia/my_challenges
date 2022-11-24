import 'package:flutter/material.dart';

class DropdownWidget extends StatelessWidget {
  const DropdownWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      decoration: const InputDecoration(
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
        prefixIcon: Icon(
          Icons.badge,
          color: Colors.grey,
        ),
      ),
      hint: const Text('Please Choose Your Occupation'),
      style: const TextStyle(color: Colors.grey),
      items: <String>['Occupation A', 'Ocupation B'].map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      onChanged: (_) {},
    );
  }
}
