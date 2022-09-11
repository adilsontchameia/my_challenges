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
          'creation and concept: Adilson Tchameia',
          style: TextStyle(fontSize: 10.0, color: Colors.grey),
        ),
        Text('stocks officially provided by: CSK Studio',
            style: TextStyle(fontSize: 10.0, color: Colors.grey)),
      ],
    );
  }
}
