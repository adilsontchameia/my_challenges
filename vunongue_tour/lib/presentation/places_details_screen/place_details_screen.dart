import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

import '../../providers/theme_provider.dart';
import '../../theme/theme.dart';
import '../user/places_details_screen/widgets/back_and_fav_button.dart';
import '../user/places_details_screen/widgets/custom_list_tile.dart';
import '../user/places_details_screen/widgets/custom_read_more.dart';
import '../user/places_details_screen/widgets/main_title_read_more.dart';
import '../user/places_details_screen/widgets/see_on_map.dart';

class PlacesDetailsScreen extends StatelessWidget {
  const PlacesDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeModel>(builder: (_, themeMode, __) {
      return Scaffold(
        body: Stack(
          children: [
            PageView(children: const [
              Image(
                height: double.infinity,
                fit: BoxFit.fill,
                image: AssetImage('assets/cuito-1.jpg'),
              ),
              Image(
                height: double.infinity,
                fit: BoxFit.fill,
                image: AssetImage('assets/cuito-2.jpg'),
              ),
            ]),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 290.0,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: themeMode.isDark
                        ? VunongueColors.blue
                        : VunongueColors.white,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(50.0),
                        topRight: Radius.circular(50.0))),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: ListTile(
                          visualDensity:
                              VisualDensity(horizontal: -4.0, vertical: -4.0),
                          dense: true,
                          title: MainTitleReadMore(),
                          leading: FaIcon(FontAwesomeIcons.locationPin,
                              color: VunongueColors.buttonColor),
                        ),
                      ),
                      CustomListTile(
                          faIcon: FontAwesomeIcons.mapLocation,
                          text: 'Cuando Cubango - Cuito Cuanavale'),
                      CustomListTile(
                          faIcon: FontAwesomeIcons.image,
                          text: 'Imagem: CSK Studio'),
                      CustomListTile(
                          faIcon: FontAwesomeIcons.book,
                          text:
                              'Contacto: +244 922 222 222 | +244 933 333 333'),
                      const Padding(
                          padding: EdgeInsets.all(15.0),
                          child: CustomReadMore(
                            text:
                                'Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase. A interfaces for iOS and Android apps with the unified codebase. interfaces for iOS and Android apps with the unified codebase.',
                          )),
                      const SeeOnMap(),
                    ],
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BackAndFavButtons(
                    icon: FontAwesomeIcons.arrowLeft,
                    onTap: () {
                      Navigator.of(context).pop();
                    }),
                BackAndFavButtons(
                    icon: FontAwesomeIcons.heartCirclePlus,
                    onTap: () {
                   
                      debugPrint('Favoritos');
                    })
              ],
            )
          ],
        ),
      );
    });
  }
}
