import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ucc_info_app/utils/consts.dart';
import 'package:ucc_info_app/widgets/course_card.dart';
import 'package:ucc_info_app/widgets/galery_card.dart';
import 'package:ucc_info_app/widgets/search_bar.dart';
import 'icon_header.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: defaultPadding, bottom: 5),
              child: const CircleAvatar(
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
            const SizedBox(height: 20.0),
            const Padding(
              padding: EdgeInsets.only(left: defaultPadding),
              child: Text('Cursos',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  )),
            ),
            const CourseCard(),
            const SizedBox(height: 10.0),
            const Padding(
              padding: EdgeInsets.only(left: defaultPadding),
              child: Text('Galeria',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  )),
            ),
            const GaleryCard(),
          ],
        ),
      ),
    );
  }
}
