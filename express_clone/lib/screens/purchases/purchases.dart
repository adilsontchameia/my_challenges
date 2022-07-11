import 'package:express_clone/utils/consts.dart';
import 'package:express_clone/widgets/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart' show timeDilation;

class PurchaseScreen extends StatefulWidget {
  PurchaseScreen({Key? key}) : super(key: key);

  @override
  State<PurchaseScreen> createState() => _PurchaseScreenState();
}

class _PurchaseScreenState extends State<PurchaseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(),
      body: Container(
        color: backGroundColor,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('COMPRAS EM CURSO',
                      style: TextStyle(
                          fontSize: 30.0,
                          color: splashColor,
                          fontWeight: FontWeight.bold)),
                  Container(
                    height: 35,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: iconAndHeadMainColor,
                    ),
                    child: Center(
                        child: Text(
                      '0',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    )),
                  ),
                ],
              ),
            ),
            SizedBox(width: 380, child: Divider(thickness: 1)),
            SizedBox(height: 20.0),
            Text(
              'Nenhuma compra por autorizar',
              style: TextStyle(
                fontSize: 23.0,
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
