import 'package:flutter/material.dart';

import 'widgets/custom_card.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: size.height * 0.2,
                width: double.infinity,
                color: const Color.fromRGBO(0, 163, 224, 1),
              ),
              SafeArea(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          iconSize: 25.0,
                          color: Colors.white,
                          onPressed: () {
                            Navigator.pop(context);
                          },
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
                    SizedBox(height: size.height * 0.02),
                    Stack(children: [
                      const CustomCard(),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 20.0, horizontal: 20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Icon(
                                size: 55.0,
                                color: Color.fromRGBO(0, 163, 224, 1),
                                Icons.account_balance_outlined),
                            const SizedBox(width: 10.0),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Abrir Conta Bancária',
                                  style: TextStyle(
                                    color: Color.fromRGBO(0, 163, 224, 1),
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16.0,
                                  ),
                                ),
                                SizedBox(height: 10.0),
                                Text(
                                  'O seu banco no telemóvel ou no computador.',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 190, 190, 190),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14.0,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ]),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
