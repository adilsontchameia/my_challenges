import 'package:express_clone/utils/consts.dart';
import 'package:express_clone/widgets/app_bar.dart';
import 'package:express_clone/widgets/atm_card.dart';
import 'package:flutter/material.dart';

import 'widgets/custom_table.dart';

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
                    AtmCard(),
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
                    tableView(),
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
