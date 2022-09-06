import 'package:flutter/material.dart';

class PlaceCardMulti extends StatelessWidget {
  const PlaceCardMulti({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160.0,
      width: 550.0,
      // color: Colors.red,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: const Image(
                      height: 140.0,
                      image: AssetImage('assets/image-1.jpg'))),
              Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                  width: 250.0,
                  height: 55.0,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(124, 0, 0, 0),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(8.0),
                        bottomRight: Radius.circular(8.0),
                      )),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: const [
                            Text('Luanda',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontSize: 16.0,
                                    color: Colors.white)),
                            Text('Kilamba Kiaxi',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 16.0,
                                    color: Colors.white))
                          ],
                        ),
                        const Text('⭐ 4.7',
                            style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.white)),
                      ],
                    ),
                  ),
                ),
              ),
            ]),
            const SizedBox(width: 1.0),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: const Image(
                        height: 60.0,
                        image: AssetImage('assets/image-1.jpg'))),
                const SizedBox(height: 1.0),
                ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: const Image(
                        height: 60.0,
                        image: AssetImage('assets/image-1.jpg'))),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
