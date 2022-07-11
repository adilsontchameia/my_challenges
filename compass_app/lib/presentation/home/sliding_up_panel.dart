import 'package:compass_app/presentation/home/home_screen.dart';
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
    final appTheme = context.watch<ThemeChanger>();
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
    return Consumer<ThemeChanger>(builder: (_, appTheme, __) {
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
                    ListTile(
                      leading: Icon(
                        Icons.info,
                        color: Theme.of(context).iconTheme.color,
                      ),
                      title: const Text('Developed by: Adilson Tchameia'),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.security_update,
                        color: Theme.of(context).iconTheme.color,
                      ),
                      title: const Text('Version: 1.0'),
                    ),
                  ],
                ),
              ),
            ],
          ));
    });
  }
}
