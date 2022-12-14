import 'package:flutter/material.dart';

import '../../../utils/search_bar_field.dart';
import 'widgets/banner_widget.dart';
import 'widgets/categories_selector.dart';
import 'widgets/categories_title.dart';
import 'widgets/popular_list_card.dart';
import 'widgets/promotion_list_card.dart';
import 'widgets/rounded_profile_pic.dart';

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
                const EdgeInsets.symmetric(horizontal: 15.0, vertical: 0.0),
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
                const SizedBox(height: 15),
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
                const SizedBox(height: 8),
                const SizedBox(
                  height: 240,
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
