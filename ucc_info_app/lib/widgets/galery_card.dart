import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ucc_info_app/utils/consts.dart';

class GaleryCard extends StatelessWidget {
  const GaleryCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
    );
  }
}
