import 'package:flutter/material.dart';
import 'package:ucc_info_app/src/models/course_model.dart';
import 'package:ucc_info_app/src/pages/course_details.dart';
import 'package:ucc_info_app/utils/consts.dart';
import 'dart:math' as math;

class CourseCard extends StatelessWidget {
  const CourseCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      height: 300.0,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: courseModel.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (ctx) => CourseDetails(
                          courseName: courseModel[index].courseName,
                          coorName: courseModel[index].coorName,
                          star: courseModel[index].star,
                          imgUrl: courseModel[index].imgUrl,
                          info: courseModel[index].info,
                          feedBack: courseModel[index].feedbacks,
                        )));
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '⭐ ${courseModel[index].star}',
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
                          Hero(
                            /*
                            flightShuttleBuilder: (
                              BuildContext flightContext,
                              Animation<double> animation,
                              HeroFlightDirection flightDirection,
                              BuildContext fromHeroContext,
                              BuildContext toHeroContext,
                            ) {
                              final Widget toHero = toHeroContext.widget;
                              return RotationTransition(
                                turns: animation,
                                child: toHero,
                              );
                            },
                            */
                            flightShuttleBuilder: (
                              BuildContext flightContext,
                              Animation<double> animation,
                              HeroFlightDirection flightDirection,
                              BuildContext fromHeroContext,
                              BuildContext toHeroContext,
                            ) {
                              final Widget toHero = toHeroContext.widget;
                              return ScaleTransition(
                                scale: animation.drive(
                                  Tween<double>(begin: 0.0, end: 2.0).chain(
                                    CurveTween(
                                      curve: Interval(0.0, 1.0,
                                          curve: PeakQuadraticCurve()),
                                    ),
                                  ),
                                ),
                                child: toHero,
                              );
                            },
                            tag: courseModel[index].courseName,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(30.0),
                              child: Image(
                                height: 150.0,
                                width: 190.0,
                                fit: BoxFit.fitHeight,
                                image: AssetImage(courseModel[index].imgUrl),
                                //image: AssetImage(courseModel[index].imgUrl),
                              ),
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
}

class PeakQuadraticCurve extends Curve {
  @override
  double transform(double t) {
    assert(t >= 0.0 && t <= 5.0);
    return -15 * math.pow(t, 2) + 15 * t + 1;
  }
}
