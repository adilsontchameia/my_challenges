import 'package:flutter/material.dart';

import '../../../../data/models/headphone_model.dart';
import '../../../../data/models/products_model.dart';
import 'favourites_button.dart';

class BuildPopularList extends StatelessWidget {
  const BuildPopularList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 280,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          HeadphoneModel headphones = headphonesList[index];
          return Container(
            height: 240.0,
            width: 170.0,
            decoration: BoxDecoration(
              color: headphones.backGroundColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 4.0, left: 20),
                      child: Align(
                        alignment: Alignment.topRight,
                        child: FavoriteButton(
                          onTap: (() {
                            print('object');
                          }),
                        ),
                      ),
                    ),
                    Image.asset(
                      headphones.imgUrl,
                      height: 165,
                      width: 170,
                    ),
                    Text(
                      headphones.productName,
                      style: const TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      headphones.productPrice.toString(),
                      style: const TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
          );
        },
        itemCount: prodcutsList.length,
        shrinkWrap: true,
      ),
    );
  }
}
