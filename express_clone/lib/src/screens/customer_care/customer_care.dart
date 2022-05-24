import 'package:express_clone/utils/consts.dart';
import 'package:express_clone/widgets/login_app_bar.dart';
import 'package:flutter/material.dart';

class CustomerCare extends StatelessWidget {
  const CustomerCare({Key? key}) : super(key: key);

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
              Text('APOIO AO CLIENTE',
                  style: TextStyle(
                    fontSize: 30.0,
                    color: iconAndHeadMainColor.withOpacity(0.70),
                    fontWeight: FontWeight.bold,
                  )),
              SizedBox(height: 50.0),
              Text('Linha de Atendimento 24H',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 23.0,
                    fontWeight: FontWeight.bold,
                  )),
              SizedBox(height: 5.0),
              Text('(Todos os dias, feriados e fins de semana)',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'RobotoSlab',
                    color: Colors.black.withOpacity(0.70),
                    fontSize: 17.0,
                    letterSpacing: 0,
                    fontWeight: FontWeight.w400,
                  )),
              SizedBox(height: 30.0),
              Text('(+244) 948 294 426 | 948 294 426',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22.0,
                    letterSpacing: 0,
                    fontWeight: FontWeight.w400,
                  )),
              SizedBox(height: 30.0),
              Text('Email: adilsonkchameia@gmail.com',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22.0,
                    letterSpacing: 0,
                    fontWeight: FontWeight.w400,
                  )),
              SizedBox(height: 240.0),
              SizedBox(
                height: 45,
                width: 350,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    primary: iconAndHeadMainColor,
                    elevation: 0,
                  ),
                  onPressed: () {},
                  child: Center(
                    child: Text(
                      'OK',
                      style: const TextStyle(
                        // fontFamily: 'RobotoSlab',
                        fontWeight: FontWeight.w600,
                        decoration: TextDecoration.underline,
                        color: titlePadColor,
                        fontSize: 30,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
