import 'package:express_clone/utils/consts.dart';
import 'package:express_clone/widgets/login_app_bar.dart';
import 'package:express_clone/widgets/ok_button.dart';
import 'package:flutter/material.dart';

class AboutMcx extends StatelessWidget {
  const AboutMcx({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: backGroundColor,
        child: Center(
          child: Column(
            children: [
              LoginAppBar(),
              SizedBox(height: 30.0),
              Text('SOBRE MCX EXPRESS',
                  style: TextStyle(
                    fontSize: 30.0,
                    color: iconAndHeadMainColor.withOpacity(0.70),
                    fontWeight: FontWeight.bold,
                  )),
              SizedBox(height: 20.0),
              Text('v7.0.1',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.w400,
                  )),
              SizedBox(height: 30.0),
              Text(
                  'MULTICAIXA EXpress, a sua carteira \n móvel, que lhe possibilita adicionar \n vários cartões MULTICAIXA e realizar \n inúmeras operações de pagamentos.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'RobotoSlab',
                    color: Colors.black.withOpacity(0.70),
                    fontSize: 23.0,
                    fontWeight: FontWeight.w400,
                  )),
              SizedBox(height: 30.0),
              Text('Mais informações em www.emis.co.ao',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'RobotoSlab',
                    color: Colors.black.withOpacity(0.70),
                    fontSize: 22.0,
                    letterSpacing: 0,
                    fontWeight: FontWeight.w400,
                  )),
              SizedBox(height: 30.0),
              Text('App Criado Por Adilson Tchameia @2022',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'RobotoSlab',
                    color: Colors.black.withOpacity(0.70),
                    fontSize: 18.0,
                    letterSpacing: 0,
                    fontWeight: FontWeight.w400,
                  )),
              SizedBox(height: 140.0),
              SizedBox(
                height: 45,
                width: 350,
                child: OkButton(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

