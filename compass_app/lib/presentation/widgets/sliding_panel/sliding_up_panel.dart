import 'package:compass_app/presentation/home/home_screen.dart';
import 'package:compass_app/presentation/widgets/sliding_panel/list_tile_sliding.dart';
import 'package:compass_app/provider/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double _panelHeightOpen = 0;
  final double _panelHeightClosed = 95.0;

  @override
  Widget build(BuildContext context) {
    //Panel Height
    _panelHeightOpen = MediaQuery.of(context).size.height * .30;

    return Material(
      child: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          SlidingUpPanel(
            color: Theme.of(context).scaffoldBackgroundColor,
            maxHeight: _panelHeightOpen,
            minHeight: _panelHeightClosed,
            parallaxEnabled: true,
            parallaxOffset: .2,
            //Main Screen
            body: const HomeScreen(),
            panelBuilder: (sc) => _panel(sc),
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(18.0),
                topRight: Radius.circular(18.0)),
          ),
        ],
      ),
    );
  }

  Widget _panel(ScrollController sc) {
    return MediaQuery.removePadding(
        context: context,
        removeTop: true,
        child: ListView(
          controller: sc,
          children: <Widget>[
            const SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 30,
                  height: 5,
                  decoration: BoxDecoration(
                      color: Theme.of(context).iconTheme.color,
                      borderRadius:
                          const BorderRadius.all(Radius.circular(12.0))),
                ),
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                Text(
                  'Information',
                  style:
                      TextStyle(fontWeight: FontWeight.normal, fontSize: 18.0),
                ),
              ],
            ),
            const SizedBox(
              height: 15.0,
            ),
            Consumer<ThemeModel>(
              builder: (_, themeModel, __) {
                return Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      InkWell(
                        onTap: () {
                          themeModel.isDark
                              ? themeModel.isDark = false
                              : themeModel.isDark = true;
                        },
                        child: ListTileSliding(
                            context: context,
                            icon: Icons.mode_night,
                            title:
                                themeModel.isDark ? 'Light Mode' : 'Dark Mode'),
                      ),
                      ListTileSliding(
                          context: context,
                          icon: Icons.info,
                          title: 'Developer: Adilson Tchameia'),
                      ListTileSliding(
                          context: context,
                          icon: Icons.landscape,
                          title: 'Designed by: Adilson Tchameia'),
                      ListTileSliding(
                          context: context,
                          icon: Icons.email,
                          title:
                              'Email: adilsonkchameia@gmail.com \nOr adilsonkchameia@outlook.com'),
                      ListTileSliding(
                        context: context,
                        icon: Icons.security_update,
                        title: 'Version: 1.0',
                      )
                    ],
                  ),
                );
              },
            ),
          ],
        ));
  }
}
