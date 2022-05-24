import 'package:express_clone/utils/consts.dart';
import 'package:flutter/material.dart';

class tableView extends StatelessWidget {
  const tableView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 340,
      decoration: BoxDecoration(
        color: backGroundColor,
        border: Border.all(color: numPadColor.withOpacity(0.60)),
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
                    style: TextStyle(color: splashColor, fontSize: 20),
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
                    style: TextStyle(color: splashColor, fontSize: 20),
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
    );
  }
}
