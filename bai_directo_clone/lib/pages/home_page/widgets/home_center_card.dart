import 'package:flutter/material.dart';

class HomePageCenterCard extends StatelessWidget {
  const HomePageCenterCard({Key? key, required this.text1, required this.text2})
      : super(key: key);
  final String text1, text2;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.15,
      width: size.width * 1,
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
            const Text(
              'HOJE, 20 NOVEMBRO 2022',
              style: TextStyle(
                color: Color.fromARGB(255, 112, 138, 159),
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 25.0),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 50.0,
                  width: 50.0,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 1,
                        spreadRadius: 2,
                        offset: const Offset(0.0, 2),
                        color: Colors.black.withOpacity(0.1),
                      )
                    ],
                  ),
                  child:
                      const Icon(size: 25.0, color: Colors.white, Icons.home),
                ),
                const SizedBox(width: 10.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Pag Entidade Recargas Directas Unitel',
                      style: TextStyle(
                        color: Color.fromARGB(255, 112, 138, 159),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.arrow_downward_sharp,
                          color: Colors.red,
                        ),
                        Text(
                          'Kz 1.000,00',
                          style: TextStyle(
                            color: Color.fromARGB(255, 112, 138, 159),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
