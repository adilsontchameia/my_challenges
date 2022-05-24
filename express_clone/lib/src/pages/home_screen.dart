import 'package:express_clone/utils/consts.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(),
      drawer: Drawer(
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
                        icon: Icons.keyboard_arrow_up_outlined,
                        function: () {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(builder: (context) => HomePage()),
                          );
                        }),
                    SizedBox(height: 5.0),
                    CustomListTile(
                        text: 'Gestão de Cartões',
                        icon: Icons.payment,
                        function: () {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(builder: (context) => HomePage()),
                          );
                        }),
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
      ),
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

  //CustomAppBar
  AppBar customAppBar() {
    return AppBar(
      iconTheme: IconThemeData(color: Colors.black),
      centerTitle: true,
      backgroundColor: iconAndHeadMainColor,
      elevation: 0,
      title: Builder(
        builder: (BuildContext context) {
          return Image(
            width: 300,
            image: AssetImage('assets/logo2.png'),
          );
        },
      ),
    );
  }
}

class RoundedButton extends StatelessWidget {
  final IconData icon;
  final String text;
  const RoundedButton({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 115.0,
      width: 115.0,
      decoration: BoxDecoration(
        // color: Colors.blue.shade400,
        border: Border.all(color: numPadColor.withOpacity(0.60)),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.0),
          Icon(icon, color: splashColor, size: 55.0),
          SizedBox(height: 15.0),
          Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 13.0,
              fontFamily: 'RobotoSlab',
              color: numPadColor.withOpacity(0.55),
            ),
          )
        ],
      ),
    );
  }
}

class CustomListTile extends StatelessWidget {
  final String text;
  final IconData icon;
  final Function function;
  const CustomListTile(
      {Key? key,
      required this.text,
      required this.icon,
      required this.function})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: numPadColor),
      title: Transform(
        transform: Matrix4.translationValues(-20, 0.0, 0.0),
        child: Text(text,
            style: TextStyle(
                color: splashColor,
                fontWeight: FontWeight.bold,
                fontSize: 15.0)),
      ),
      onTap: () => function,
    );
  }
}
