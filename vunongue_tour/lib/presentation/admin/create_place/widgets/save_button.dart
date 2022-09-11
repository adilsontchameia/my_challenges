import 'package:flutter/material.dart';

class SaveButton extends StatelessWidget {
  const SaveButton({
    Key? key,
    required this.onTap,
  }) : super(key: key);
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
          height: 50.0,
          width: 200.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0), color: Colors.blue),
          child: const Center(
            child: Text(
              'Salvar',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 17.0),
            ),
          )),
    );
  }
}
