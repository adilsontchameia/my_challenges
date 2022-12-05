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
      backGroundColor: const Color.fromARGB(255, 225, 244, 255),
    ),
    HeadphoneModel(
      productName: 'HeadPhones JBL',
      productPrice: 123.76,
      imgUrl: 'assets/headphone_purple.png',
      backGroundColor: const Color.fromARGB(255, 255, 236, 255),
    ),
    HeadphoneModel(
      productName: 'HeadPhones JBL',
      productPrice: 123.76,
      imgUrl: 'assets/headphone_red.png',
      backGroundColor: const Color.fromARGB(255, 252, 222, 237),
    ),
    HeadphoneModel(
      productName: 'HeadPhones JBL',
      productPrice: 123.76,
      imgUrl: 'assets/headphone_black.png',
      backGroundColor: const Color.fromARGB(255, 243, 243, 243),
    ),
    HeadphoneModel(
      productName: 'HeadPhones JBL',
      productPrice: 123.76,
      imgUrl: 'assets/headphone_blue2.png',
      backGroundColor: const Color.fromARGB(255, 220, 243, 255),
    ),
    HeadphoneModel(
      productName: 'HeadPhones JBL',
      productPrice: 123.76,
      imgUrl: 'assets/headphone_blue2.png',
      backGroundColor: const Color.fromARGB(255, 220, 243, 255),
    ),
  ];
}
