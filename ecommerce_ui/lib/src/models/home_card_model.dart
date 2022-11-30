import 'package:flutter/animation.dart';

class ProductsModel {
  String productName, productDescription, imgUrl;
  int productPrice;
  Color backGroundColor;
  ProductsModel(
      {required this.productName,
      required this.imgUrl,
      required this.productPrice,
      required this.productDescription,
      required this.backGroundColor});

  static List<ProductsModel> prodcutsModel = [
    ProductsModel(
        productName: 'JBL x90',
        productPrice: 90,
        productDescription: '',
        imgUrl: '',
        backGroundColor: const Color.fromRGBO(4, 4, 5, 1)),
    ProductsModel(
        productName: 'JBL x90',
        productPrice: 90,
        productDescription: '',
        imgUrl: '',
        backGroundColor: const Color.fromRGBO(4, 4, 5, 1)),
    ProductsModel(
        productName: 'JBL x90',
        productPrice: 90,
        productDescription: '',
        imgUrl: '',
        backGroundColor: const Color.fromRGBO(4, 4, 5, 1)),
  ];
}
