import 'package:flutter/material.dart';

class HomePageTopCard extends StatelessWidget {
  const HomePageTopCard({Key? key, required this.text1, required this.text2})
      : super(key: key);
  final String text1, text2;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        //  height: size.height * 0.18,
        width: size.width * 0.28,
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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Icon(
                  size: 25.0,
                  color: Color.fromRGBO(0, 163, 224, 1),
                  Icons.account_balance_outlined),
              RichText(
                text: TextSpan(
                  style: const TextStyle(
                      color: Color.fromARGB(255, 190, 190, 190),
                      fontSize: 13.0),
                  children: [
                    TextSpan(
                      text: text1,
                    ),
                    TextSpan(
                      text: '\n$text2',
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
