import 'package:flutter/material.dart';

import 'widgets/banner_widget.dart';
import 'widgets/most_populars.dart';
import 'widgets/promotion_card.dart';

class ResumePage extends StatefulWidget {
  const ResumePage({super.key});

  @override
  State<ResumePage> createState() => _ResumePageState();
}

class _ResumePageState extends State<ResumePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 0.0),
              child: Text('On Promotion',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            ),
            const SizedBox(height: 10),
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
                      PromotionCard(
                        descriptionText: 'JbL x50',
                        imgUrl: 'assets/headphone_blue2.png',
                        containerColor: const Color.fromARGB(255, 123, 180, 255)
                            .withOpacity(0.7),
                      ),
                      const SizedBox(width: 10),
                      PromotionCard(
                        descriptionText: 'JbL x90',
                        imgUrl: 'assets/headphone_blue.png',
                        containerColor: const Color.fromARGB(255, 224, 238, 255)
                            .withOpacity(0.7),
                      ),
                      const SizedBox(width: 10),
                      PromotionCard(
                        descriptionText: 'Sound Box',
                        imgUrl: 'assets/monitor.png',
                        containerColor: const Color.fromARGB(255, 253, 255, 131)
                            .withOpacity(0.7),
                      ),
                      const SizedBox(width: 10),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Center(
              child: BannerWidget(),
            ),
            const SizedBox(height: 20),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 0.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Most Populars',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  Icon(Icons.arrow_forward_rounded)
                ],
              ),
            ),
            const SizedBox(height: 10),
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
                        containerColor: const Color.fromARGB(255, 212, 231, 255)
                            .withOpacity(0.7),
                      ),
                      const SizedBox(width: 10),
                      MostPopularsCard(
                        descriptionText: 'Microphone 2x',
                        priceText: '\$122.78',
                        imgUrl: 'assets/microphone.png',
                        containerColor: const Color.fromARGB(255, 240, 240, 240)
                            .withOpacity(0.7),
                      ),
                      const SizedBox(width: 10),
                      MostPopularsCard(
                        descriptionText: 'Airpods Red',
                        imgUrl: 'assets/airpods.png',
                        priceText: '\$122.78',
                        containerColor: const Color.fromARGB(255, 255, 204, 195)
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
    );
  }
}