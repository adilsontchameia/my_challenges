import 'package:flutter/material.dart';

class HeadphoneModel {
  String? productName, imgUrl;
  String? productDescription;
  double? productPrice;
  Color? backGroundColor;
  HeadphoneModel({
    this.productName,
    this.imgUrl,
    this.productPrice,
    this.productDescription,
    this.backGroundColor,
  });
}

List<HeadphoneModel> headphonesList = [
  HeadphoneModel(
    productName: 'HeadPhones JBL',
    productPrice: 130.00,
    productDescription:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip.',
    imgUrl: 'assets/headphone_blue.png',
    backGroundColor: const Color.fromARGB(255, 225, 244, 255),
  ),
  HeadphoneModel(
    productName: 'HeadPhones Purple',
    productPrice: 99.99,
    productDescription:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip.',
    imgUrl: 'assets/headphone_purple.png',
    backGroundColor: const Color.fromARGB(255, 255, 236, 255),
  ),
  HeadphoneModel(
    productName: 'JBL Black',
    productPrice: 110.05,
    productDescription:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip.',
    imgUrl: 'assets/headphone_red.png',
    backGroundColor: const Color.fromARGB(255, 252, 222, 237),
  ),
  HeadphoneModel(
    productName: 'JBL Max Red',
    productPrice: 350.00,
    productDescription:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip.',
    imgUrl: 'assets/headphone_black.png',
    backGroundColor: const Color.fromARGB(255, 243, 243, 243),
  ),
  HeadphoneModel(
    productName: 'HeadPhones JBL',
    productPrice: 50.00,
    productDescription:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip.',
    imgUrl: 'assets/headphone_blue2.png',
    backGroundColor: const Color.fromARGB(255, 220, 243, 255),
  ),
  HeadphoneModel(
    productName: 'JBL Blue',
    productPrice: 123.76,
    productDescription:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip.',
    imgUrl: 'assets/headphone_blue2.png',
    backGroundColor: const Color.fromARGB(255, 220, 243, 255),
  ),
];
