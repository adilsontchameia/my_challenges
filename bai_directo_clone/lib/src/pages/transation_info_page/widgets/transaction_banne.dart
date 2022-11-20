import 'package:flutter/material.dart';

class MainBanner extends StatelessWidget {
  const MainBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Stack(children: [
        Container(
          height: size.height * 0.3 + 40,
          width: double.infinity,
          color: Colors.orange,
        ),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 35.0,
                ),
                const Icon(Icons.home, color: Colors.white, size: 50.0),
                const Text(
                  'Pag Entidade Recargas Directas Unitel',
                  softWrap: true,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25.0,
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Icon(
                      size: 17.0,
                      Icons.arrow_downward_rounded,
                      color: Colors.red,
                    ),
                    Text(
                      'Kz 1.000,00',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 17.0),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}