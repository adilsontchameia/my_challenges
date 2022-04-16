import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:ucc_info_app/src/models/slide_show.dart';
import 'package:ucc_info_app/utils/consts.dart';

// ignore: must_be_immutable
class CarouselSlide extends StatelessWidget {
  CarouselSlide({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: slideImgs.length,
      itemBuilder: (context, index, realIndex) {
        return Container(
            width: MediaQuery.of(context).size.width,
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(40.0),
                      child: Image(
                        fit: BoxFit.fitHeight,
                        image: AssetImage(slideImgs[index]),
                      )),
                ),
                Align(
                  alignment: Alignment(0.0, 0.8),
                  child: Container(
                    color: iconColor2.withOpacity(0.8),
                    child: Text(slideTitle[index].imgName,
                        style: carouselTextStyle),
                  ),
                ),
              ],
            ));
      },
      options: CarouselOptions(
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 3),
        enlargeCenterPage: true,
        enlargeStrategy: CenterPageEnlargeStrategy.height,
        autoPlayCurve: Curves.easeInToLinear,
        height: 230.0,
        onPageChanged: (index, reason) {},
      ),
    );
  }
}
