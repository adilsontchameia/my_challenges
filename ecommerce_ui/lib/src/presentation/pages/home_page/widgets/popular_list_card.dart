import 'package:ecommerce_ui/src/presentation/pages/product_details/product_details.dart';
import 'package:flutter/material.dart';

import '../../../../data/models/headphone_model.dart';
import '../../../../data/models/products_model.dart';
import 'favourites_button.dart';

class BuildPopularList extends StatefulWidget {
  const BuildPopularList({
    Key? key,
  }) : super(key: key);

  @override
  State<BuildPopularList> createState() => _BuildPopularListState();
}

class _BuildPopularListState extends State<BuildPopularList> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 280,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          HeadphoneModel headphones = headphonesList[index];
          return Padding(
            padding: const EdgeInsets.only(left: 5.0, right: 5.0),
            child: Container(
              width: 170.0,
              decoration: BoxDecoration(
                color: headphones.backGroundColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: SingleChildScrollView(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              ProductDetailsPage(headphones: headphones)),
                    );
                  },
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 5.0, right: 5.0, left: 5.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const FavoriteButton(),
                        Image.asset(
                          headphones.imgUrl!,
                          height: 155,
                          width: 170,
                        ),
                        Text(
                          headphones.productName!,
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
              ),
            ),
          );
        },
        itemCount: prodcutsList.length,
      ),
    );
  }
}
