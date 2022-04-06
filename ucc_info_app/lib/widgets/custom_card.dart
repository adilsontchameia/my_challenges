import 'package:flutter/material.dart';
import 'package:ucc_info_app/utils/consts.dart';

//SearchBar
Widget searchBar() {
  return Column(
    children: [
      Container(
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
      ),
      const SizedBox(height: 12.0),
      SizedBox(
        height: 40.0,
        width: 160.0,
        child: ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
              primary: iconColor1,
              shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5)))),
          onPressed: () {
            print('Pressionado');
          },
          icon: const Icon(
            Icons.search,
          ),
          label: const Text(
            'Search',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
    ],
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
                          child: Image(
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
