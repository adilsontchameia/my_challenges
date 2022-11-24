import 'package:flutter/material.dart';

class CancelButton extends StatelessWidget {
  const CancelButton({
    Key? key,
    required this.onTap,
  }) : super(key: key);
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 135,
        height: 40,
        decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
        child: const Center(
            child: Text(
          'Cancel',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 15.0),
        )),
      ),
    );
  }
}
