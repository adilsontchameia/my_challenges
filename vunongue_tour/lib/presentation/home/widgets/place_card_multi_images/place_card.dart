import 'package:flutter/material.dart';
import 'package:vunongue_tour/theme/theme.dart';

class PlaceCardMulti extends StatelessWidget {
  const PlaceCardMulti({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              offset: Offset(0, 0),
              blurRadius: 1.0,
              spreadRadius: 3.0,
            )
          ],
          color: VunongueColors.blue,
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        child: SizedBox(
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
                      decoration: BoxDecoration(
                          color: VunongueColors.blue.withOpacity(0.3),
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(8.0),
                            bottomRight: Radius.circular(8.0),
                          )),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Column(
                              children: [
                                Text('Luanda',
                                    textAlign: TextAlign.start,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        fontSize: 16.0,
                                        color: Colors.grey.shade200)),
                                const Text('Kilamba Kiaxi',
                                    textAlign: TextAlign.center,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        fontSize: 16.0,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold))
                              ],
                            ),
                          ),
                          const Text('⭐ 4.7',
                              style: TextStyle(
                                  fontSize: 16.0, color: Colors.white)),
                        ],
                      ),
                    ),
                  ),
                ]),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
        ),
      ),
    );
  }
}
