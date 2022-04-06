import 'package:flutter/material.dart';
import 'package:ucc_info_app/utils/consts.dart';
import 'package:ucc_info_app/widgets/header_details.dart';

class GaleryDetails extends StatelessWidget {
  const GaleryDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: backgroundColor,
          child: Column(
            children: [
              HeaderDetails(),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: defaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Campus Universitario'.toUpperCase(),
                      style: const TextStyle(
                        color: textColor,
                        fontSize: 25.0,
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    const Text(
                      'CREDITOS: CSK STUDIO',
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
                    Container(
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
                          children: const [
                            Text(
                              'Informacoes',
                              style: TextStyle(
                                color: textColor,
                                fontSize: 25.0,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                infoCourse,
                                style: TextStyle(
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
