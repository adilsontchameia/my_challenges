import 'package:ecommerce_ui/src/data/models/headphone_model.dart';
import 'package:ecommerce_ui/src/data/models/products_model.dart';
import 'package:flutter/material.dart';

import '../../../utils/search_bar_field.dart';
import 'widgets/banner_widget.dart';
import 'widgets/categories_selector.dart';
import 'widgets/favourites_button.dart';

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
                const SizedBox(
                  height: 260,
                  width: double.infinity,
                  child: BuildPopularList(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

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
                      headphones.productDescription,
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
