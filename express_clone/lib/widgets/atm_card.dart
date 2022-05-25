import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AtmCard extends StatelessWidget {
  AtmCard({
    Key? key,
  }) : super(key: key);
  final List<Widget> atmCardsBuilt = [
    CustomAtmCard(
        colorLeft: Colors.blueAccent.shade400,
        colorRight: Colors.blue.shade900,
        cardNumber: '4937 47******263 2',
        cardDate: '\n 05/22',
        imgPath:
            SvgPicture.asset('assets/bai.svg', semanticsLabel: 'BAI Logo')),
    CustomAtmCard(
        colorLeft: Colors.orange,
        colorRight: Colors.deepOrange,
        cardNumber: '5960 58******493 4',
        cardDate: '\n 10/23',
        imgPath:
            SvgPicture.asset('assets/bfa.svg', semanticsLabel: 'BFA Logo')),
    CustomAtmCard(
        colorLeft: Colors.cyan.shade600,
        colorRight: Colors.blue,
        cardNumber: '3920 95******576 3',
        cardDate: '\n 12/24',
        imgPath: Image(image: AssetImage('assets/atlantico.png'))),
  ];
  PageController _pageController = new PageController(viewportFraction: 1.1);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250.0,
      width: 360.0,
      child: PageView.builder(
        controller: _pageController,
        itemCount: atmCardsBuilt.length,
        itemBuilder: (context, index) {
          return FractionallySizedBox(
            widthFactor: 1 / _pageController.viewportFraction,
            child: atmCardsBuilt[index],
          );
        },
      ),
    );
  }
}

class CustomAtmCard extends StatelessWidget {
  final Color colorLeft;
  final Color colorRight;
  final String cardNumber;
  final String cardDate;
  final Widget imgPath;
  final bool isSvg = true;
  const CustomAtmCard({
    Key? key,
    required this.colorLeft,
    required this.colorRight,
    required this.cardNumber,
    required this.cardDate,
    required this.imgPath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250.0,
      width: 360.0,
      decoration: BoxDecoration(
        color: Colors.blue.shade400,
        borderRadius: BorderRadius.circular(20.0),
        gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              colorLeft,
              colorRight,
            ]),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  imgPath,
                  Image(
                    height: 70,
                    width: 70,
                    image: AssetImage(
                      'assets/multicaixa.png',
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.only(left: 50.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  cardNumber,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    letterSpacing: 3,
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Text(
                  'Expitation Date:',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.0,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                SizedBox(width: 70.0),
                Text(
                  cardDate,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
              ],
            ),
            SizedBox(height: 30.0),
            Text(
              'ELECTRONIC USE ONLY',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/*
Container(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: SmoothPageIndicator(
                controller: _pageController,
                count: atmCardsBuilt.length,
                onDotClicked: (index) => _pageController.animateToPage(index,
                    duration: Duration(milliseconds: 500),
                    curve: Curves.bounceOut),
              ),
            ),
          ),
          */