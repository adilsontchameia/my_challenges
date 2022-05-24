import 'package:express_clone/src/screens/home/widgets/rounded_button.dart';
import 'package:express_clone/utils/consts.dart';
import 'package:express_clone/widgets/app_bar.dart';
import 'package:flutter/material.dart';

import 'widgets/custom_drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(),
      drawer: CustomDrawer(),
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
