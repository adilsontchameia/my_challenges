import 'package:ecommerce_ui/src/data/models/products_model.dart';
import 'package:flutter/material.dart';

import '../../../utils/search_bar_field.dart';
import 'widgets/banner_widget.dart';
import 'widgets/categories_selector.dart';
import 'widgets/most_populars.dart';

class HomePage extends StatefulWidget {
  HomePage({
    super.key,
  });
  final List<String> categories = [
    'All',
    'Headphones',
    'Guitar',
    'Pianos',
    'Microphone',
    'Speaker',
    'Sound Box',
  ];
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          actions: const [
            Padding(
              padding: EdgeInsets.all(11.0),
              child: CustomAvatar(),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 0.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 15),
                const CustomTextField(),
                const SizedBox(height: 15),
                const CategorieTitle(text: 'Categories'),
                const SizedBox(height: 14),
                CategorySelector(category: widget.categories),
                const SizedBox(height: 10),
                const CategorieTitle(text: 'On Promotion'),
                const SizedBox(height: 10),
                const BuildPromotionList(),
                const SizedBox(height: 10),
                const Center(
                  child: BannerWidget(),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      CategorieTitle(text: 'Most Populars'),
                      Icon(Icons.arrow_forward_rounded)
                    ],
                  ),
                ),
                const SizedBox(height: 5),
                SizedBox(
                  height: 260,
                  width: double.infinity,
                  child: SingleChildScrollView(
                    padding: EdgeInsets.zero,
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: Row(
                        children: [
                          MostPopularsCard(
                            descriptionText: 'Guitar Hero',
                            imgUrl: 'assets/guitar.png',
                            priceText: '\$122.78',
                            containerColor:
                                const Color.fromARGB(255, 212, 231, 255)
                                    .withOpacity(0.7),
                          ),
                          const SizedBox(width: 10),
                          MostPopularsCard(
                            descriptionText: 'Microphone 2x',
                            priceText: '\$122.78',
                            imgUrl: 'assets/microphone.png',
                            containerColor:
                                const Color.fromARGB(255, 240, 240, 240)
                                    .withOpacity(0.7),
                          ),
                          const SizedBox(width: 10),
                          MostPopularsCard(
                            descriptionText: 'Airpods Red',
                            imgUrl: 'assets/airpods.png',
                            priceText: '\$122.78',
                            containerColor:
                                const Color.fromARGB(255, 255, 204, 195)
                                    .withOpacity(0.7),
                          ),
                          const SizedBox(width: 10),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class BuildPromotionList extends StatelessWidget {
  const BuildPromotionList({
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
          ProductsModel products = prodcutsList[index];
          return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 280.0,
                width: 165.0,
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
                        child: Text(
                          products.productName,
                          style: TextStyle(
                            color: Colors.grey.shade800,
                          ),
                        ),
                      ),
                    ),
                    Image.asset(
                      products.imgUrl,
                      height: 170,
                      width: 170,
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

class CustomTab extends StatelessWidget {
  const CustomTab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('data'),
          );
        });
  }
}

class CustomAvatar extends StatelessWidget {
  const CustomAvatar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 18,
      backgroundImage: AssetImage('assets/profile_pic.jpg'),
    );
  }
}

class CategorieTitle extends StatelessWidget {
  const CategorieTitle({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold));
  }
}
