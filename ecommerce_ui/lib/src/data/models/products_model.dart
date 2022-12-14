import 'package:flutter/material.dart';

class ProductsModel {
  String productName;
  String imgUrl;
  String productDescription;
  int productPrice;
  Color backGroundColor;
  ProductsModel({
    required this.productName,
    required this.imgUrl,
    required this.productPrice,
    required this.productDescription,
    required this.backGroundColor,
  });
}

List<ProductsModel> prodcutsList = [
  ProductsModel(
    productName: 'JBL x90',
    productPrice: 90,
    productDescription: '',
    imgUrl: 'assets/headphone_blue.png',
    backGroundColor: const Color.fromARGB(255, 223, 223, 255),
  ),
  ProductsModel(
      productName: 'iWS10',
      productPrice: 90,
      productDescription: '',
      imgUrl: 'assets/airpods.png',
      backGroundColor: const Color.fromARGB(231, 254, 197, 196)),
  ProductsModel(
      productName: 'Beats Audio',
      productPrice: 90,
      productDescription: '',
      imgUrl: 'assets/headphone_blue2.png',
      backGroundColor: const Color.fromARGB(255, 186, 203, 246)),
  ProductsModel(
      productName: 'Beats Audio Max',
      productPrice: 90,
      productDescription: '',
      imgUrl: 'assets/headphone_red.png',
      backGroundColor: const Color.fromARGB(255, 132, 64, 64)),
  ProductsModel(
      productName: 'Noise Cancelation Mic',
      productPrice: 90,
      productDescription: '',
      imgUrl: 'assets/microphone.png',
      backGroundColor: const Color.fromARGB(255, 200, 200, 200)),
  ProductsModel(
      productName: 'Electric Guitar',
      productPrice: 90,
      productDescription: '',
      imgUrl: 'assets/guitar.png',
      backGroundColor: const Color.fromARGB(255, 255, 237, 222)),
];
