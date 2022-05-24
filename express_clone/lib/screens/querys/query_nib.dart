import 'package:express_clone/utils/consts.dart';
import 'package:express_clone/widgets/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'widgets/custom_snack.dart';

class QueryNib extends StatelessWidget {
  const QueryNib({Key? key}) : super(key: key);

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
                      child: Text('CONSULTA DE IBAN',
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
                    SizedBox(
                      width: 350,
                      child: Divider(thickness: 1),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'IBAN:',
                            style: TextStyle(
                              fontSize: 24.0,
                              color: numPadColor.withOpacity(0.55),
                            ),
                          ),
                          Text(
                            'A006.0055.1111.2222.4444.5555.1',
                            style: TextStyle(
                              fontSize: 24.0,
                              color: numPadColor.withOpacity(0.55),
                            ),
                          ),
                          SizedBox(height: 30.0),
                          Center(
                            child: Column(
                              children: [
                                Container(
                                  height: 55.0,
                                  width: 55.0,
                                  decoration: BoxDecoration(
                                    color: backGroundColor,
                                    border: Border.all(color: splashColor),
                                    borderRadius: BorderRadius.circular(40.0),
                                  ),
                                  child: IconButton(
                                      onPressed: () {
                                        Clipboard.setData(new ClipboardData(
                                                text:
                                                    'A006.0055.1111.2222.4444.5555.1'))
                                            .then((_) =>
                                                showCustomSnackBar(context));
                                      },
                                      iconSize: 35,
                                      icon: Icon(Icons.copy_rounded,
                                          color: splashColor)),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  'Copiar IBAN \n para clipboard',
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    color: splashColor,
                                  ),
                                  textAlign: TextAlign.center,
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
            ],
          ),
        ),
      ),
    );
  }
}
