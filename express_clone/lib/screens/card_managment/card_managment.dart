
import 'package:express_clone/screens/home/widgets/custom_drawer.dart';
import 'package:express_clone/utils/consts.dart';
import 'package:express_clone/widgets/app_bar.dart';
import 'package:flutter/material.dart';

class CardManagment extends StatelessWidget {
  const CardManagment({Key? key}) : super(key: key);

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
                            'Proteger Cartões',
                            style:
                                TextStyle(fontSize: 18.0, color: Colors.grey),
                          )),
                      Divider(),
                      TextButton(
                          onPressed: () {
                            print('Pressed');
                          },
                          child: Text(
                            'Configurar cartões',
                            style:
                                TextStyle(fontSize: 18.0, color: Colors.grey),
                          )),
                      Divider(),
                      TextButton(
                          onPressed: () {
                            print('Pressed');
                          },
                          child: Text(
                            'Cartões por activar',
                            style:
                                TextStyle(fontSize: 18.0, color: Colors.grey),
                          )),
                      Divider(),
                      TextButton(
                          onPressed: () {
                            print('Pressed');
                          },
                          child: Text(
                            'Predefinir cartão',
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
