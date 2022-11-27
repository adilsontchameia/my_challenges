import 'package:flutter/material.dart';

class ResumePage extends StatelessWidget {
  const ResumePage({super.key});

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
            Center(
              child: Container(
                height: 90,
                width: 350,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadiusDirectional.circular(10.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(
                        'assets/headphone_blue2.png',
                        height: 170,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'See the the products !',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 5.0),
                          Text(
                            'This is a text that serves as example.',
                            softWrap: true,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.8),
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 5.0),
                          Container(
                            height: 30.0,
                            width: 90.0,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5.0)),
                            child: const Center(
                              child: Text(
                                'Explore',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 13.5,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
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
            Container(
              height: 220,
              width: double.infinity,
              color: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}

class PromotionCard extends StatelessWidget {
  const PromotionCard(
      {Key? key,
      required this.descriptionText,
      required this.imgUrl,
      required this.containerColor})
      : super(key: key);
  final String descriptionText, imgUrl;
  final Color containerColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250.0,
      width: 170.0,
      decoration: BoxDecoration(
        color: containerColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                descriptionText,
                style: TextStyle(color: Colors.grey.shade800),
              ),
            ),
          ),
          Image.asset(
            imgUrl,
            height: 170,
            width: 170,
          ),
        ],
      ),
    );
  }
}
