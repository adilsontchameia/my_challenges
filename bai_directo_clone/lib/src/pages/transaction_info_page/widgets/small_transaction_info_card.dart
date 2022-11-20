import 'package:flutter/material.dart';

class SmallTransactionInfoCard extends StatelessWidget {
  const SmallTransactionInfoCard({
    Key? key,
    required this.size,
    required this.icon,
    required this.text1,
    required this.text2,
    required this.text3,
  }) : super(key: key);

  final Size size;
  final IconData icon;
  final String text1, text2, text3;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Container(
            width: size.width * 0.9,
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
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 10.0),
                  Row(
                    children: [
                      Icon(
                        icon,
                        color: Colors.grey,
                      ),
                      const SizedBox(width: 10.0),
                      Text(
                        text1,
                        style: const TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.w600,
                            fontSize: 18.0),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        text2,
                        style: const TextStyle(
                            color: Color.fromARGB(255, 112, 138, 159),
                            fontWeight: FontWeight.w600,
                            fontSize: 13.0),
                      ),
                      const SizedBox(height: 5.0),
                      Text(
                        text3,
                        style: const TextStyle(
                            color: Color.fromARGB(255, 112, 138, 159),
                            fontWeight: FontWeight.w600,
                            fontSize: 15.0),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}