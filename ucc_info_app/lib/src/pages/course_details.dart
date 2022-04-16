import 'package:flutter/material.dart';
import 'package:ucc_info_app/utils/consts.dart';
import 'package:ucc_info_app/widgets/course/bottom_info.dart';
import 'package:ucc_info_app/widgets/header_details.dart';

// ignore: must_be_immutable
class CourseDetails extends StatelessWidget {
  String courseName;
  String coorName;
  double star;
  String imgUrl;
  String info;
  String workAt;
  int years;
  String feedBack;

  CourseDetails({
    Key? key,
    required this.courseName,
    required this.coorName,
    required this.star,
    required this.imgUrl,
    required this.info,
    required this.workAt,
    required this.years,
    required this.feedBack,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: backgroundColor,
          child: Column(
            children: [
              HeaderDetails(
                courseName: courseName,
                imgUrl: imgUrl,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: defaultPadding),
                child: BottomInfo(
                    courseName: courseName,
                    coorName: coorName,
                    star: star,
                    feedBack: feedBack,
                    info: info,
                    workAt: workAt,
                    years: years),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
