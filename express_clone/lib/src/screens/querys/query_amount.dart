import 'package:express_clone/utils/consts.dart';
import 'package:express_clone/widgets/app_bar.dart';
import 'package:flutter/material.dart';

class QueryAmount extends StatelessWidget {
  const QueryAmount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(),
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
                    SizedBox(height: 5),
                    SizedBox(
                      width: 350,
                      child: Divider(thickness: 1),
                    ),
                    SizedBox(height: 30.0),
                    Container(
                      height: 120,
                      width: 340,
                      decoration: BoxDecoration(
                        color: backGroundColor,
                        border:
                            Border.all(color: numPadColor.withOpacity(0.60)),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 5),
                          Text(
                            '5.000,00 Kz',
                            style: TextStyle(color: splashColor, fontSize: 24),
                          ),
                          SizedBox(height: 5),
                          SizedBox(
                            width: 320,
                            child: Divider(thickness: 2),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
                                  SizedBox(height: 23.0),
                                  Text(
                                    '5.000,00 Kz',
                                    style: TextStyle(
                                        color: splashColor, fontSize: 20),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    'Autorizado',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ],
                              ),
                              Container(
                                width: 1,
                                height: 60,
                                decoration: BoxDecoration(color: Colors.grey),
                              ),
                              Column(
                                children: [
                                  SizedBox(height: 23.0),
                                  Text(
                                    '5.000,00 Kz',
                                    style: TextStyle(
                                        color: splashColor, fontSize: 20),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    'Contabilistico',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ],
                              ),
                            ],
                          ),
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
