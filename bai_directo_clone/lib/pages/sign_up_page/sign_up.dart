import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Stack(children: [
            Container(
              height: size.height * 0.2,
              width: double.infinity,
              color: const Color.fromRGBO(0, 163, 224, 1),
            ),
            SafeArea(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    iconSize: 25.0,
                    color: Colors.white,
                    onPressed: () {},
                    icon: const Icon(Icons.close),
                  ),
                  const Text(
                    'ADERIR',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox()
                ],
              ),
            ),
          ])
        ],
      ),
    );
  }
}
