import 'package:express_clone/screens/home/widgets/custom_drawer.dart';

import 'package:express_clone/utils/consts.dart';
import 'package:express_clone/widgets/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart' show timeDilation;

import 'widgets/custom_switch.dart';

class HistoryScreen extends StatefulWidget {
  bool? isChecked = true;
  HistoryScreen({Key? key, this.isChecked}) : super(key: key);

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(),
      drawer: CustomDrawer(),
      body: Container(
        color: backGroundColor,
        child: Column(
          children: [
            CheckboxListTile(
              checkColor: Colors.white,
              activeColor: splashColor,
              controlAffinity: ListTileControlAffinity.leading,
              title: Center(
                child: Text('ACTIVIDADE',
                    style: TextStyle(
                        fontSize: 30.0,
                        color: splashColor,
                        fontWeight: FontWeight.bold)),
              ),
              value: timeDilation != 1.0,
              onChanged: (bool? value) {
                setState(() {
                  timeDilation = value! ? 10.0 : 1.0;
                });
              },
              secondary: Container(
                height: 35,
                width: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: iconAndHeadMainColor,
                ),
                child: Center(
                    child: Text(
                  '26',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                )),
              ),
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SwitchButton(text: 'HISTÓRICO', color: iconAndHeadMainColor),
                SwitchButton(
                    text: 'PENDENTES',
                    color: Colors.blueGrey.withOpacity(0.60)),
              ],
            ),
            Expanded(
              child: ListView(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                padding: EdgeInsets.only(top: 15.0),
                children: [
                  Column(
                    children: [
                      customCheckBox('2022-04-25 15:50 Pagamento Serv.'),
                      Divider(thickness: 1),
                      customCheckBox('2022-04-25 15:50 Pagamento Serv.'),
                      Divider(thickness: 1),
                      customCheckBox('2022-04-25 15:50 Pagamento Serv.'),
                      Divider(thickness: 1),
                      customCheckBox('2022-04-25 15:50 Pagamento Serv.'),
                      Divider(thickness: 1),
                      customCheckBox('2022-04-25 15:50 Pagamento Serv.'),
                      Divider(thickness: 1),
                      customCheckBox('2022-04-25 15:50 Pagamento Serv.'),
                      Divider(thickness: 1),
                      customCheckBox('2022-04-25 15:50 Pagamento Serv.'),
                      Divider(thickness: 1),
                      customCheckBox('2022-04-25 15:50 Pagamento Serv.'),
                      Divider(thickness: 1),
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

  CheckboxListTile customCheckBox(String text) {
    return CheckboxListTile(
      checkColor: Colors.white,
      selectedTileColor: splashColor,
      activeColor: splashColor,
      controlAffinity: ListTileControlAffinity.leading,
      title: Center(
        child: Transform(
          transform: Matrix4.translationValues(-40, 0.0, 0.0),
          child: Text(
            text,
            style: TextStyle(
                fontSize: 18.0,
                color: Colors.black.withOpacity(0.50),
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
      value: timeDilation != 1.0,
      onChanged: (bool? value) {
        setState(() {
          timeDilation = value! ? 10.0 : 1.0;
        });
      },
    );
  }
}
