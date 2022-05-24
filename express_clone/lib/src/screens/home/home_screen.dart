import 'package:express_clone/src/screens/home/widgets/custom_list_title.dart';
import 'package:express_clone/src/screens/home/widgets/rounded_button.dart';
import 'package:express_clone/utils/consts.dart';
import 'package:express_clone/widgets/app_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(),
      drawer: customDrawer(),
      body: SingleChildScrollView(
        child: Container(
          color: backGroundColor,
          child: Column(
            children: [
              Center(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30.0),
                      child: Text('CARTÕES',
                          style: TextStyle(
                              color: splashColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 30.0)),
                    ),
                    SizedBox(height: 10.0),
                    Container(
                      height: 250.0,
                      width: 360.0,
                      decoration: BoxDecoration(
                        color: Colors.blue.shade400,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                    SizedBox(height: 5.0),
                    Text(
                      'Adilson Kamati Tchameia',
                      style: TextStyle(
                        fontSize: 24.0,
                        fontFamily: 'RobotoSlab',
                        color: numPadColor.withOpacity(0.55),
                      ),
                    ),
                    SizedBox(height: 15),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              RoundedButton(
                                  icon: Icons.data_saver_off,
                                  text: 'PAGAMENTOS'),
                              RoundedButton(
                                  icon: Icons.compare_arrows_rounded,
                                  text: 'TRANSFÊRENCIAS'),
                              RoundedButton(
                                  icon: Icons.payments,
                                  text: 'LEVANTAMENTO SEM CARTÃO'),
                            ],
                          ),
                          SizedBox(height: 20.0),
                          Row(
                            children: [
                              RoundedButton(
                                  icon: Icons.search_rounded,
                                  text: 'PAGAMENTOS'),
                              SizedBox(width: 25.0),
                              RoundedButton(
                                  icon: Icons.timelapse,
                                  text: 'TRANSFÊRENCIAS'),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class customDrawer extends StatelessWidget {
  const customDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10.0, left: 5.0),
              child: Column(
                children: [
                  CustomListTile(
                      text: 'Início',
                      icon: Icons.arrow_drop_up,
                      function: () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => HomePage()),
                        );
                      }),
                  SizedBox(height: 5.0),
                  CustomListTile(
                      text: 'Gestão de Cartões',
                      icon: Icons.payment,
                      function: () => Navigator.of(context).pushReplacement(
                            MaterialPageRoute(builder: (context) => HomePage()),
                          )),
                  SizedBox(height: 5.0),
                  CustomListTile(
                      text: 'Actividades',
                      icon: Icons.schedule,
                      function: () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => HomePage()),
                        );
                      }),
                  SizedBox(height: 5.0),
                  CustomListTile(
                      text: 'Configurações',
                      icon: Icons.settings,
                      function: () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => HomePage()),
                        );
                      }),
                  SizedBox(height: 5.0),
                  CustomListTile(
                      text: 'Apoio ao Cliente',
                      icon: Icons.gpp_good_sharp,
                      function: () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => HomePage()),
                        );
                      }),
                  SizedBox(height: 5.0),
                  CustomListTile(
                      text: 'Sobre o MCX Express',
                      icon: Icons.gpp_good_sharp,
                      function: () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => HomePage()),
                        );
                      }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
