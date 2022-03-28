import 'package:flutter/material.dart';
import 'package:ucc_info_app/utils/consts.dart';
import 'package:ucc_info_app/widgets/header_details.dart';

class CoursesDetails extends StatelessWidget {
  const CoursesDetails({Key? key}) : super(key: key);
  static const String routeName = 'courses';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: backgroundColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HeaderDetails(),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: defaultPadding, horizontal: defaultPadding),
                child: Column(
                  children: [
                    Text(
                      courseName.toUpperCase(),
                      style: const TextStyle(
                        color: textColor,
                        fontSize: 25.0,
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    const Text(
                      'Coordenador: Adilson Tchameia',
                      style: TextStyle(
                        color: textColor,
                        fontSize: 15.0,
                      ),
                    ),
                    const Text(
                      'Classificacao: ⭐  4.5 (20 Opnioes)',
                      style: TextStyle(
                        color: textColor,
                        fontSize: 15.0,
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        width: 380,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(20.0),
                          ),
                          boxShadow: [
                            BoxShadow(
                              offset: const Offset(0, 5),
                              blurRadius: 5,
                              color: shadowColor.withOpacity(0.30),
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: Column(
                            children: [
                              Text(
                                'Informacoes',
                                style: const TextStyle(
                                  color: textColor,
                                  fontSize: 25.0,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  infoCourse,
                                  style: const TextStyle(
                                    color: textColor,
                                    fontSize: 12.0,
                                  ),
                                  textAlign: TextAlign.justify,
                                ),
                              ),
                            ],
                          ),
                        ),
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
