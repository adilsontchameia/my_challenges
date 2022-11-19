import 'package:flutter/material.dart';

class SignUpCard extends StatelessWidget {
  const SignUpCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Center(
      child: Container(
        height: size.height * 0.13,
        width: size.width * 0.9 + 25,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 1,
              spreadRadius: 2,
              offset: const Offset(0.0, 2),
              color: Colors.black.withOpacity(0.1),
            )
          ],
          borderRadius: const BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
      ),
    );
  }
}
