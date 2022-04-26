import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:ucc_info_app/src/models/slide_show.dart';
import 'package:ucc_info_app/utils/consts.dart';
import 'package:ucc_info_app/widgets/course/course_card.dart';
import 'package:ucc_info_app/widgets/home/search_bar.dart';
import 'package:ucc_info_app/widgets/update/updates_card.dart';
import 'package:ucc_info_app/widgets/slide_show.dart';
import 'icons_header.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  _HomeBodyState createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: defaultPadding, bottom: 5),
              child: CircleAvatar(
                radius: 35,
                backgroundImage: AssetImage('assets/ucc.jpeg'),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: defaultPadding),
              child: Text(
                titleHeader,
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
            ),
            Container(height: 10.0),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    IconHeader(icon: Icons.photo),
                    IconHeader(icon: Icons.book),
                    IconHeader(icon: Icons.list),
                    IconHeader(icon: Icons.perm_contact_calendar),
                  ]),
            ),
            const SizedBox(height: 30.0),
            const SearchBar(),
            const SizedBox(height: 15.0),
            const Padding(
              padding: EdgeInsets.only(left: defaultPadding),
              child: Text('Cursos', style: cardsTextStyle),
            ),
            const CourseCard(),
            const SizedBox(height: 10.0),
            const Padding(
              padding: EdgeInsets.only(left: defaultPadding),
              child: Text('Atualizações', style: cardsTextStyle),
            ),
            const GaleryCard(),
            const Padding(
              padding: EdgeInsets.only(left: defaultPadding),
              child: Text('Galeria', style: cardsTextStyle),
            ),
            CarouselSlide(),
          ],
        ),
      ),
    );
  }
}



/*
CarouselSlider(
      options: CarouselOptions(
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 1),
        reverse: false,
        autoPlayCurve: Curves.fastOutSlowIn,
        height: 200.0,
      ),
      items: [1, 2, 3, 4, 5].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 5.0),
                child: Image(
                  image: AssetImage('assets/it.jpg'),
                ));
          },
        );
      }).toList(),
    );
*/