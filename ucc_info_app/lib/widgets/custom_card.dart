import 'package:flutter/material.dart';
import 'package:ucc_info_app/src/models/course_model.dart';
import 'package:ucc_info_app/src/pages/course_details.dart';
import 'package:ucc_info_app/utils/consts.dart';

//SearchBar
Widget searchBar() {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 40.0),
    height: 50.0,
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(50.0),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 5),
            blurRadius: 5,
            color: shadowColor.withOpacity(0.30),
          ),
        ]),
    child: Padding(
      padding: const EdgeInsets.only(left: defaultPadding),
      child: Row(
        children: const [
          Icon(Icons.search, size: 25.0, color: iconColor2),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: titleSearch,
                hintStyle: TextStyle(
                  color: iconColor2,
                ),
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    ),
  );
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
          CourseModel courseModels = courseModel[index];
          return GestureDetector(
            onTap: () {
              //  Navigator.pushReplacementNamed(context, CoursesDetails.routeName);
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => CoursesDetails()));
            },
            child: Container(
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
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(30.0),
                          child: Image(
                            height: 150,
                            width: 190.0,
                            fit: BoxFit.fitHeight,
                            image: AssetImage(courseModel[index].imgUrl),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        }),
  );
}

//GaleryCard
Widget galeryCard(BuildContext context) {
  return GestureDetector(
    onTap: () {
      Navigator.pushNamed(context, '/galeryDetails');
    },
    child: SizedBox(
      height: 300.0,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              margin: const EdgeInsets.all(10.0),
              width: 250.0,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Positioned(
                    bottom: 40.0,
                    child: Container(
                      height: 110.0,
                      width: 250.0,
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
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: const [
                                Text(
                                  'Campus Universitario',
                                  style: textStyle,
                                ),
                                Text(
                                  'ANO: 2022',
                                  style: textStyle,
                                ),
                                Text(
                                  'CREDITOS: CSK STUDIO',
                                  style: TextStyle(
                                      fontSize: 10.0,
                                      color: textColor,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            //  Text('Adilson', style: textStyle)
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
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: const Image(
                            height: 150,
                            width: 250.0,
                            fit: BoxFit.cover,
                            image: AssetImage('assets/img.JPG'),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            );
          }),
    ),
  );
}
