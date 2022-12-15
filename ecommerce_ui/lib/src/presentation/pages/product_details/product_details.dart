import 'package:ecommerce_ui/src/data/models/headphone_model.dart';
import 'package:ecommerce_ui/src/presentation/pages/home_page/widgets/favourites_button.dart';
import 'package:flutter/material.dart';

import 'widgets/add_and_buy_button.dart';

class ProductDetailsPage extends StatefulWidget {
  const ProductDetailsPage({super.key, this.headphones});
  final HeadphoneModel? headphones;
  @override
  State<ProductDetailsPage> createState() => _ProductDetailsPageState();
}

int value = 1;

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 330.0,
                  width: double.infinity,
                  color: widget.headphones!.backGroundColor!,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: Image.asset(widget.headphones!.imgUrl!),
                  ),
                ),
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                            onTap: () => _close(),
                            child: const Icon(Icons.arrow_back_rounded)),
                        const FavoriteButton(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 5.0),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.headphones!.productName!,
                    style: const TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5.0),
                  Row(
                    children: const [
                      Text(
                        'By JBL Corp',
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(width: 5.0),
                      Icon(
                        Icons.check_box_rounded,
                        size: 18,
                        color: Colors.blue,
                      ),
                    ],
                  ),
                  const SizedBox(height: 18.0),
                  const Text(
                    'Select QTY',
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      quantityButton(),
                      Text(
                        value == 0
                            ? '\$${widget.headphones!.productPrice!}'
                            : double.parse(calculus().toStringAsFixed(2))
                                .toString(),
                        style: const TextStyle(
                          fontSize: 19.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 35),
                  const Text(
                    'Product Details',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5.0),
                  Text(
                    widget.headphones!.productDescription!,
                    textAlign: TextAlign.justify,
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 35),
                  Center(
                    child: Column(
                      children: const [
                        AddAndBuyButton(
                            text: 'Add to Cart', color: Colors.blue),
                        SizedBox(height: 15.0),
                        AddAndBuyButton(text: 'Buy it Now', color: Colors.red),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  quantityButton() {
    return Container(
      height: 30,
      width: 95,
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GestureDetector(
            onTap: () => setState(() {
              value--;
            }),
            child: const Icon(
              Icons.remove,
              color: Colors.black,
            ),
          ),
          Text(
            '$value ',
            style: const TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          GestureDetector(
            onTap: () => setState(() {
              value++;
            }),
            child: const Icon(
              Icons.add,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  double calculus() {
    return widget.headphones!.productPrice! * value;
  }

  //Function to close and show mainMenu
  void _close() {
    Navigator.pop(context);
    //After closing the page the defatul value will be given.
    value = 1;
  }
}
