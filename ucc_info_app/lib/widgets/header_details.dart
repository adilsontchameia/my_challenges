import 'package:flutter/material.dart';
import 'package:ucc_info_app/src/models/course_model.dart';
import 'package:ucc_info_app/utils/consts.dart';

class HeaderDetails extends StatelessWidget {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Hero(
          tag: courseModel,
          child: const ClipRRect(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30.0),
                bottomRight: Radius.circular(30.0)),
            child: Image(
              height: 380.0,
              fit: BoxFit.cover,
              image: AssetImage('assets/img.JPG'),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(defaultPadding),
          child: SafeArea(
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                height: 50.0,
                width: 50.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.white.withOpacity(0.70),
                    boxShadow: [
                      BoxShadow(
                        offset: const Offset(0, 5),
                        blurRadius: 5,
                        color: shadowColor.withOpacity(0.30),
                      ),
                    ]),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.arrow_back_ios,
                        color: Colors.black.withOpacity(0.70),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
