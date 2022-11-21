import 'package:flutter/material.dart';

class HomeCardModel {
  IconData icon;
  String text1;
  String text2;
  VoidCallback onTap;
  HomeCardModel({
    required this.icon,
    required this.text1,
    required this.text2,
    required this.onTap,
  });

  static List<HomeCardModel> homeCardModel = [
    HomeCardModel(
      icon: Icons.wallet,
      text1: 'PAGAR',
      text2: 'BAI PAGA',
      onTap: () => debugPrint('Tapped'),
    ),
    HomeCardModel(
      icon: Icons.monetization_on_rounded,
      text1: 'CARREGAR',
      text2: 'BAI PAGA',
      onTap: () => debugPrint('Tapped'),
    ),
    HomeCardModel(
      icon: Icons.document_scanner,
      text1: 'CONSULTAR',
      text2: 'PATRIMÓNIO',
      onTap: () => debugPrint('Tapped'),
    ),
    HomeCardModel(
      icon: Icons.wallet,
      text1: 'PAGAR',
      text2: 'SERVIÇOS',
      onTap: () => debugPrint('Tapped'),
    ),
    HomeCardModel(
      icon: Icons.copy_rounded,
      text1: 'PAGAR',
      text2: 'BAI PAGA',
      onTap: () => debugPrint('Tapped'),
    ),
    HomeCardModel(
      icon: Icons.currency_exchange,
      text1: 'CÂMBIOS',
      text2: 'TAXAS DE CÂMBIOS',
      onTap: () => debugPrint('Tapped'),
    ),
    HomeCardModel(
      icon: Icons.sd_card_outlined,
      text1: 'CONSULTAR',
      text2: 'CARTÕES',
      onTap: () => debugPrint('Tapped'),
    ),
  ];
}
