import 'package:flutter/material.dart';

class DropdownWidget extends StatelessWidget {
  const DropdownWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      decoration: const InputDecoration(
        prefixIcon: Icon(
          Icons.badge,
          color: Colors.amber,
        ),
      ),
      hint: const Text('Please choose account type'),
      style: const TextStyle(color: Colors.grey),
      items: <String>['A', 'B', 'C', 'D'].map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      onChanged: (_) {},
    );
  }
}