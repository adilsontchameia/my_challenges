import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vunongue_tour/theme/theme.dart';

import 'custom_card_list_tile.dart';

class SimplePlaceCard extends StatelessWidget {
  const SimplePlaceCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(6.0),
      height: 95.0,
      width: 380.0,
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
                  child: const Image(
                      height: 80.0, image: AssetImage('assets/image-1.jpg')))),
          const SizedBox(width: 10.0),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('Paisagem Exemplo',
                    overflow: TextOverflow.ellipsis,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0)),
                SizedBox(height: 6.0),
                CustomCardListTile(
                    text: 'Miradouro Da Leba',
                    icon: FontAwesomeIcons.mapLocation),
                SizedBox(height: 6.0),
                CustomCardListTile(
                    text: 'Classificacao (Opnioes): 4.5 ',
                    icon: FontAwesomeIcons.star),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
