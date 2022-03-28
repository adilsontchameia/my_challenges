import 'package:flutter/material.dart';
import 'package:ucc_info_app/src/pages/course_details.dart';
import 'package:ucc_info_app/src/pages/home_page.dart';
import 'package:ucc_info_app/utils/consts.dart';

class CourseCard extends StatelessWidget {
  const CourseCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushReplacementNamed(context, CoursesDetails.routeName);
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        height: 300.0,
        // color: Colors.red,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
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
                              const Text(
                                courseName,
                                style: textStyle,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text(
                                    '⭐ 4.5',
                                    style: textStyle,
                                  ),
                                  Text(
                                    'Adilson Tchameia',
                                    style: TextStyle(
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
                            child: const Image(
                              height: 150,
                              width: 190.0,
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
}
