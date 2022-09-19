import 'package:flutter/material.dart';

class CopyrightSign extends StatelessWidget {
  const CopyrightSign({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Text(
          'Developed by: Adilson Tchameia',
          style: TextStyle(fontSize: 10.0, color: Colors.grey),
        ),
        Text('All stocks are officially provided by: CSK Studio',
            style: TextStyle(fontSize: 10.0, color: Colors.grey)),
      ],
    );
  }
}
