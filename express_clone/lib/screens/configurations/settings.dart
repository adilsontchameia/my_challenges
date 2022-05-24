import 'package:express_clone/screens/home/widgets/custom_drawer.dart';

import 'package:express_clone/utils/consts.dart';
import 'package:express_clone/widgets/app_bar.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(),
      drawer: CustomDrawer(),
      body: Container(
        color: backGroundColor,
        child: Column(
          children: [
            Expanded(
              child: ListView(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                padding: EdgeInsets.all(15.0),
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextButton(
                          onPressed: () {
                            print('Pressed');
                          },
                          child: Text(
                            'Os meus dados',
                            style:
                                TextStyle(fontSize: 18.0, color: Colors.grey),
                          )),
                      Divider(),
                      ListTile(
                        title: Transform(
                          transform: Matrix4.translationValues(-10, 0.0, 0.0),
                          child: Text(
                            'Tempo de bloqueio',
                            style:
                                TextStyle(fontSize: 18.0, color: Colors.grey),
                          ),
                        ),
                        subtitle: Transform(
                          transform: Matrix4.translationValues(-10, 0.0, 0.0),
                          child: Text(
                            'Defina o tempo de bloqueio do aplicativo após um período de inactividade.',
                            style:
                                TextStyle(fontSize: 15.0, color: Colors.grey),
                          ),
                        ),
                        onTap: () {
                          print('Pressed');
                        },
                      ),
                      Divider(),
                      TextButton(
                          onPressed: () {
                            print('Pressed');
                          },
                          child: Text(
                            'Alteração de PIN',
                            style:
                                TextStyle(fontSize: 18.0, color: Colors.grey),
                          )),
                      Divider(),
                      TextButton(
                          onPressed: () {
                            print('Pressed');
                          },
                          child: Text(
                            'Gestão Fingerprint',
                            style:
                                TextStyle(fontSize: 18.0, color: Colors.grey),
                          )),
                      Divider(),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
