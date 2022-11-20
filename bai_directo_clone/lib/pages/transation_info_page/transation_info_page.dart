import 'package:flutter/material.dart';

class TransationInfoPage extends StatelessWidget {
  const TransationInfoPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              MainBanner(size: size),
              SafeArea(
                child: Column(
                  children: [
                    const CustomAppBar(),
                    SizedBox(height: size.height * 0.15),
                    Stack(children: [
                      TopCircleCards(size: size),
                    ]),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 25.0),
          TransactionInfoCard(size: size),
          const SizedBox(height: 5.0),
          SmallTransactionInfoCard(
              size: size,
              icon: Icons.calendar_today_rounded,
              text1: 'Data',
              text2: 'DATA',
              text3: '17 NOVEMBRO 2022'),
          const SizedBox(height: 5.0),
          SmallTransactionInfoCard(
              size: size,
              icon: Icons.info,
              text1: 'Outras Informações',
              text2: 'NÚMERO DE OPERAÇÃO',
              text3: '12345678'),
        ],
      ),
    ));
  }
}

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

class MainBanner extends StatelessWidget {
  const MainBanner({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: size.height * 0.3,
        width: double.infinity,
        color: Colors.orange,
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          iconSize: 25.0,
          color: Colors.white,
          onPressed: () {
            debugPrint('Clicked');
          },
          icon: const Icon(Icons.close),
        ),
      ],
    );
  }
}

class TopCircleCards extends StatelessWidget {
  const TopCircleCards({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          CustomCircularIcon(icon: Icons.mail_outline_outlined),
          CustomCircularIcon(icon: Icons.file_download),
        ],
      ),
    );
  }
}

class CustomCircularIcon extends StatelessWidget {
  const CustomCircularIcon({
    Key? key,
    required this.icon,
  }) : super(key: key);
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      width: 60.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(35.0),
        boxShadow: [
          BoxShadow(
            blurRadius: 1,
            spreadRadius: 2,
            offset: const Offset(0.0, 2),
            color: Colors.black.withOpacity(0.1),
          )
        ],
      ),
      child: Icon(
        size: 30.0,
        icon,
        color: Colors.orange,
      ),
    );
  }
}
