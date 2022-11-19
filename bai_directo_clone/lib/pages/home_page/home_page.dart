import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: size.height * 0.4,
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
                          icon: const Icon(Icons.star_border_outlined),
                        ),
                        const Text(
                          'O  QUE PROCURAS',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox()
                      ],
                    ),
                    SizedBox(height: size.height * 0.02),
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
