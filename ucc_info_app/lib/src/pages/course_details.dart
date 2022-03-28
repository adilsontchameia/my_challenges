import 'package:flutter/material.dart';
import 'package:ucc_info_app/utils/consts.dart';
import 'package:ucc_info_app/widgets/header_details.dart';

class CoursesDetails extends StatelessWidget {
  const CoursesDetails({Key? key}) : super(key: key);
  static const String routeName = 'courses';
  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      child: const HeaderDetails(),
    );
  }
}
