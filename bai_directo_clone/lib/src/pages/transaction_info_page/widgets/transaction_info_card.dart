import 'package:flutter/material.dart';

class TransactionInfoCard extends StatelessWidget {
  const TransactionInfoCard({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

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
                    children: const [
                      Icon(
                        Icons.currency_exchange,
                        color: Colors.grey,
                      ),
                      SizedBox(width: 10.0),
                      Text(
                        'Montante',
                        style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.w600,
                            fontSize: 18.0),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'TIPO DE MOVIMENTO',
                        style: TextStyle(
                            color: Color.fromARGB(255, 112, 138, 159),
                            fontWeight: FontWeight.w600,
                            fontSize: 13.0),
                      ),
                      Text(
                        'BPS Debito',
                        style: TextStyle(
                            color: Color.fromARGB(255, 112, 138, 159),
                            fontWeight: FontWeight.w600,
                            fontSize: 17.0),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30.0),
                  Column(
                    children: const [
                      Text(
                        'MONTANTE',
                        style: TextStyle(
                            color: Color.fromARGB(255, 112, 138, 159),
                            fontWeight: FontWeight.w600,
                            fontSize: 13.0),
                      ),
                    ],
                  ),
                  Row(
                    children: const [
                      Icon(
                        size: 17.0,
                        Icons.arrow_downward_rounded,
                        color: Colors.red,
                      ),
                      Text(
                        'Kz 1.000,00',
                        style: TextStyle(
                            color: Color.fromARGB(255, 112, 138, 159),
                            fontWeight: FontWeight.w600,
                            fontSize: 17.0),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30.0),
                  const Text(
                    'SALDO APÓS MOVIMENTO',
                    style: TextStyle(
                        color: Color.fromARGB(255, 112, 138, 159),
                        fontWeight: FontWeight.w600,
                        fontSize: 13.0),
                  ),
                  const SizedBox(height: 5.0),
                  Row(
                    children: const [
                      Icon(
                        size: 17.0,
                        Icons.add,
                        color: Colors.green,
                      ),
                      Text(
                        'Kz 1.000,00',
                        style: TextStyle(
                            color: Color.fromARGB(255, 112, 138, 159),
                            fontWeight: FontWeight.w600,
                            fontSize: 17.0),
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