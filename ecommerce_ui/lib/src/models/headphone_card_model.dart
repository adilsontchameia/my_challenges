import 'package:flutter/animation.dart';

class HeadphoneModel {
  String productName, productDescription, imgUrl;
  int productPrice;
  Color backGroundColor;
  HeadphoneModel(
      {required this.productName,
      required this.imgUrl,
      required this.productPrice,
      required this.productDescription,
      required this.backGroundColor});

  static List<HeadphoneModel> headphonesModel = [
    HeadphoneModel(
        productName: 'JBL x90',
        productPrice: 90,
        productDescription: '',
        imgUrl: 'assets/airpods.png',
        backGroundColor: const Color.fromRGBO(4, 4, 5, 1)),
    HeadphoneModel(
        productName: 'JBL x90',
        productPrice: 90,
        productDescription: '',
        imgUrl: 'assets/airpods.png',
        backGroundColor: const Color.fromRGBO(4, 4, 5, 1)),
    HeadphoneModel(
        productName: 'JBL x90',
        productPrice: 90,
        productDescription: '',
        imgUrl: 'assets/airpods.png',
        backGroundColor: const Color.fromRGBO(4, 4, 5, 1)),
  ];
}
