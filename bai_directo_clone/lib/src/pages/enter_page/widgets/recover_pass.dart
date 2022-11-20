import 'package:flutter/material.dart';

class RecoverPassWidget extends StatelessWidget {
  const RecoverPassWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (() => print('Clicado')),
      child: const Text('RECUPERAR CREDENCIAIS',
          style: TextStyle(
            color: Colors.white,
            fontSize: 13,
            fontWeight: FontWeight.bold,
          )),
    );
  }
}
