import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:readmore/readmore.dart';
import 'package:vunongue_tour/models/fake_place_data.dart';
import 'package:vunongue_tour/theme/theme.dart';

import 'custom_card_list_tile.dart';

class SimplePlaceCard extends StatelessWidget {
  const SimplePlaceCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: PlacesData.places.length,
      itemBuilder: (context, index) {
        return PlacesDesign(
          placesData: PlacesData.places[index],
        );
      },
    );
  }
}

class PlacesDesign extends StatelessWidget {
  const PlacesDesign({
    Key? key,
    required this.placesData,
  }) : super(key: key);
  final PlacesData placesData;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.only(bottom: 10.0),
        padding: const EdgeInsets.all(6.0),
        //  height: size.height * 0.15,
        //width: 20,
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              offset: Offset(0, 0),
              blurRadius: 4.0,
              spreadRadius: 8.0,
            )
          ],
          color: VunongueColors.blue,
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        child: Row(
          children: [
            Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                ),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image(
                      height: 90.0,
                      width: 150.0,
                      fit: BoxFit.cover,
                      image: AssetImage(placesData.image),
                    ))),
            const SizedBox(width: 10.0),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    placesData.placeTitle,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 16.0),
                  ),
                  const SizedBox(height: 6.0),
                  CustomCardListTile(
                      text: placesData.location,
                      icon: FontAwesomeIcons.mapLocation),
                  const SizedBox(height: 6.0),
                  CustomCardListTile(
                      text: 'Classificacao (Opnioes):  ${placesData.rate}',
                      icon: FontAwesomeIcons.star),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget placeTitle(String text) {
  return ReadMoreText(
    text,
    trimLines: 2,
    colorClickableText: Colors.pink,
    trimMode: TrimMode.Length,
    trimCollapsedText: 'Show More',
    trimExpandedText: '\nShow Less',
    style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
    moreStyle: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.bold,
        color: VunongueColors.buttonColor),
    lessStyle: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.bold,
        color: VunongueColors.buttonColor),
  );
}
