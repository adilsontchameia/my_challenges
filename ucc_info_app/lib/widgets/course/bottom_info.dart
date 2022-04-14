import 'package:flutter/material.dart';
import 'package:ucc_info_app/utils/consts.dart';

class BottomInfo extends StatelessWidget {
  BottomInfo({
    Key? key,
    required this.courseName,
    required this.coorName,
    required this.star,
    required this.feedBack,
    required this.info,
  }) : super(key: key);

  final String courseName;
  final String coorName;
  final double star;
  final String feedBack;
  final String info;

  final List<int> items = [1, 2, 3, 4, 5];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          courseName.toUpperCase(),
          style: const TextStyle(
            color: textColor,
            fontSize: 25.0,
          ),
        ),
        const SizedBox(height: 10.0),
        Text(
          'Coordenador: $coorName',
          style: const TextStyle(
            color: textColor,
            fontSize: 15.0,
          ),
        ),
        Text(
          'Classificacao: ⭐  $star | ($feedBack) Opnioes',
          style: const TextStyle(
            color: textColor,
            fontSize: 15.0,
          ),
        ),
        const SizedBox(height: 10.0),
        InformationCard(info: info),
        const SizedBox(height: 15.0),
        InformationCard(info: working),
      ],
    );
  }
}

class InformationCard extends StatelessWidget {
  const InformationCard({
    Key? key,
    required this.info,
    required this.header,
    required this.size,
  }) : super(key: key);

  final String info;
  final String header;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 380,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(
          Radius.circular(20.0),
        ),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 5),
            blurRadius: 5,
            color: shadowColor.withOpacity(0.30),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: Column(
          children: [
            Text(
              information,
              style: TextStyle(
                color: textColor,
                fontSize: 25.0,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                info,
                style: TextStyle(
                  color: textColor,
                  fontSize: size,
                ),
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
