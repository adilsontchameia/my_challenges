class HomeCardModel {
  String icon;
  String text1;
  String text2;

  HomeCardModel({
    required this.icon,
    required this.text1,
    required this.text2,
  });

  static List<HomeCardModel> homeCardModel = [
    HomeCardModel(
      icon: 'assets/payments.svg',
      text1: 'PAGAR',
      text2: 'BAI PAGA',
    ),
    HomeCardModel(
      icon: 'assets/sendMoney.svg',
      text1: 'CARREGAR',
      text2: 'E-KWANZA',
    ),
    HomeCardModel(
      icon: 'assets/consult.svg',
      text1: 'CONSULTAR',
      text2: 'PATRIMÓNIO',
    ),
    HomeCardModel(
      icon: 'assets/payments.svg',
      text1: 'PAGAR',
      text2: 'SERVIÇOS',
    ),
    HomeCardModel(
      icon: 'assets/withdraw.svg',
      text1: 'LEVANTAR',
      text2: 'DINHEIRO',
    ),
    HomeCardModel(
      icon: 'assets/currency.svg',
      text1: 'CÂMBIOS',
      text2: 'TAXAS DE CÂMBIOS',
    ),
    HomeCardModel(
      icon: 'assets/cards.svg',
      text1: 'CONSULTAR',
      text2: 'CARTÕES',
    ),
  ];
}
