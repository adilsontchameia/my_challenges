import 'package:flutter/animation.dart';

class HeadphoneModel {
  String productName, imgUrl;
  String? productDescription;
  double productPrice;
  Color backGroundColor;
  HeadphoneModel({
    required this.productName,
    required this.imgUrl,
    required this.productPrice,
    this.productDescription,
    required this.backGroundColor,
  });

  static List<HeadphoneModel> headphonesModel = [
    HeadphoneModel(
      productName: 'HeadPhones JBL',
      productPrice: 123.76,
      imgUrl: 'assets/headphone_blue.png',
      backGroundColor: const Color.fromRGBO(4, 4, 5, 1),
    ),
    HeadphoneModel(
      productName: 'JBL x91',
      productPrice: 120.00,
      imgUrl: 'assets/headphone_purple.png',
      backGroundColor: const Color.fromRGBO(4, 4, 5, 1),
    ),
    HeadphoneModel(
      productName: 'JBL x92',
      productPrice: 150.00,
      imgUrl: 'assets/headphone_black.png',
      backGroundColor: const Color.fromRGBO(4, 4, 5, 1),
    ),
    HeadphoneModel(
      productName: 'JBL x93',
      productPrice: 200.75,
      imgUrl: 'assets/headphone_red.png',
      backGroundColor: const Color.fromRGBO(4, 4, 5, 1),
    ),
    HeadphoneModel(
      productName: 'JBL x93',
      productPrice: 200.75,
      imgUrl: 'assets/headphone_blue2.png',
      backGroundColor: const Color.fromRGBO(4, 4, 5, 1),
    ),
    HeadphoneModel(
      productName: 'JBL x93',
      productPrice: 200.75,
      imgUrl: 'assets/headphone_blue2.png',
      backGroundColor: const Color.fromRGBO(4, 4, 5, 1),
    ),
  ];
}
