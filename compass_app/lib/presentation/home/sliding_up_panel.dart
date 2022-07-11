import 'package:compass_app/presentation/home/home_screen.dart';
import 'package:compass_app/presentation/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class SlidingUpPanelExample extends StatelessWidget {
  const SlidingUpPanelExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.grey[200],
      systemNavigationBarIconBrightness: Brightness.dark,
      systemNavigationBarDividerColor: Colors.black,
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SlidingUpPanel Example',
      theme: darkTheme,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final double _initFabHeight = 120.0;
  double _fabHeight = 0;
  double _panelHeightOpen = 0;
  final double _panelHeightClosed = 95.0;

  @override
  void initState() {
    super.initState();
    _fabHeight = _initFabHeight;
  }

  @override
  Widget build(BuildContext context) {
    //Panel Height
    _panelHeightOpen = MediaQuery.of(context).size.height * .30;

    return Material(
      child: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          SlidingUpPanel(
            color: YourCompassColors.dark,
            maxHeight: _panelHeightOpen,
            minHeight: _panelHeightClosed,
            parallaxEnabled: true,
            parallaxOffset: .5,
            body: const HomeScreen(),
            panelBuilder: (sc) => _panel(sc),
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(18.0),
                topRight: Radius.circular(18.0)),
            onPanelSlide: (double pos) => setState(() {
              _fabHeight = pos * (_panelHeightOpen - _panelHeightClosed) +
                  _initFabHeight;
            }),
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
                  decoration: const BoxDecoration(
                      color: YourCompassColors.white,
                      borderRadius: BorderRadius.all(Radius.circular(12.0))),
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
                  'Settings',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 18.0,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  SwitchListTile(
                      value: true,
                      title: const Text('Dark Mode'),
                      onChanged: (val) {}),
                  const ListTile(
                    leading: Icon(
                      Icons.info,
                      color: YourCompassColors.white,
                    ),
                    title: Text('Developed by: Adilson Tchameia'),
                  ),
                  const ListTile(
                    leading: Icon(
                      Icons.security_update,
                      color: YourCompassColors.white,
                    ),
                    title: Text('Version: 1.0'),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
