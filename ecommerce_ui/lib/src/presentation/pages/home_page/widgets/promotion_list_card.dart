import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import '../../../../data/models/products_model.dart';

class BuildPromotionList extends StatelessWidget {
  const BuildPromotionList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 255,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          ProductsModel products = prodcutsList[index];
          return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 172.0,
                decoration: BoxDecoration(
                  color: products.backGroundColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 10.0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: ElasticInDown(
                          child: Text(
                            products.productName,
                            style: TextStyle(
                              color: Colors.grey.shade800,
                            ),
                          ),
                        ),
                      ),
                    ),
                    FadeInDown(
                      child: Image.asset(
                        products.imgUrl,
                        height: 170,
                        width: 170,
                      ),
                    ),
                  ],
                ),
              ));
        },
        itemCount: prodcutsList.length,
        shrinkWrap: true,
      ),
    );
  }
}
