import 'package:flutter/material.dart';

class HomeCardModel {
  Icon? icon;
  String? text1;
  String? text2;
  VoidCallback? onTap;
  HomeCardModel({
    this.icon,
    this.text1,
    this.text2,
    this.onTap,
  });

  static List<HomeCardModel> homeCardModel = [
    HomeCardModel(
      icon: const Icon(Icons.wallet),
      text1: 'PAGAR',
      text2: 'BAI PAGA',
      onTap: () => debugPrint('Tapped'),
    ),
    HomeCardModel(
      icon: const Icon(Icons.monetization_on_rounded),
      text1: 'CARREGAR',
      text2: 'BAI PAGA',
      onTap: () => debugPrint('Tapped'),
    ),
    HomeCardModel(
      icon: const Icon(Icons.document_scanner),
      text1: 'CONSULTAR',
      text2: 'PATRIMÓNIO',
      onTap: () => debugPrint('Tapped'),
    ),
    HomeCardModel(
      icon: const Icon(Icons.wallet),
      text1: 'PAGAR',
      text2: 'SERVIÇOS',
      onTap: () => debugPrint('Tapped'),
    ),
    HomeCardModel(
      icon: const Icon(Icons.copy_rounded),
      text1: 'PAGAR',
      text2: 'BAI PAGA',
      onTap: () => debugPrint('Tapped'),
    ),
    HomeCardModel(
      icon: const Icon(Icons.currency_exchange),
      text1: 'CÂMBIOS',
      text2: 'TAXAS DE CÂMBIOS',
      onTap: () => debugPrint('Tapped'),
    ),
    HomeCardModel(
      icon: const Icon(Icons.sd_card_outlined),
      text1: 'CONSULTAR',
      text2: 'CARTÕES',
      onTap: () => debugPrint('Tapped'),
    ),
  ];
}
