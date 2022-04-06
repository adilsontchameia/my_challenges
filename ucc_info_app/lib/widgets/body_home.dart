import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:ucc_info_app/src/models/course_model.dart';
import 'package:ucc_info_app/src/pages/course_details.dart';
import 'package:ucc_info_app/utils/consts.dart';
import 'package:ucc_info_app/widgets/custom_card.dart';
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
            searchBar(),
            const SizedBox(height: 15.0),
            const Padding(
              padding: EdgeInsets.only(left: defaultPadding),
              child: Text('Cursos',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  )),
            ),
            courseCard(),
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
            galeryCard(context),
          ],
        ),
      ),
    );
  }
}

//CourseCard
Widget courseCard() {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 10),
    height: 300.0,
    // color: Colors.red,
    child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: courseModel.length,
        itemBuilder: (BuildContext context, int index) {
          //  CourseModel courseModels = courseModel[index].id;
          return Container(
            margin: const EdgeInsets.all(5.0),
            width: 210.0,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Positioned(
                  bottom: 60.0,
                  child: Container(
                    height: 100.0,
                    width: 190.0,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                        boxShadow: [
                          BoxShadow(
                            offset: const Offset(0, 5),
                            blurRadius: 5,
                            color: shadowColor.withOpacity(0.30),
                          ),
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            courseModel[index].courseName,
                            style: textStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                '⭐ 4.5',
                                style: textStyle,
                              ),
                              Text(
                                courseModel[index].coorName,
                                style: const TextStyle(
                                    fontSize: 10.0, color: textColor),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => CoursesDetails()));
                    },
                    child: Stack(
                      children: [
                        Hero(
                          tag: courseModel[index].imgUrl,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(30.0),
                            child: Image(
                              height: 150,
                              width: 190.0,
                              fit: BoxFit.cover,
                              image: AssetImage(courseModel[0].imgUrl),
                              //image: AssetImage(courseModel[index].imgUrl),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        }),
  );
}
