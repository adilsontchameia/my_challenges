import 'package:bai_directo_clone/utils/theme_config.dart';
import 'package:flutter/material.dart';

class HomePageCenterCard extends StatelessWidget {
  const HomePageCenterCard({
    Key? key,
    required this.isExpensive,
  }) : super(key: key);
  final bool isExpensive;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        height: size.height * 0.15,
        width: size.width * 1,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 1,
              spreadRadius: 2,
              offset: const Offset(0.0, 2),
              color: Colors.black.withOpacity(0.1),
            )
          ],
          borderRadius: const BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                '20 NOVEMBRO 2022',
                style: TextStyle(
                    color: BaiColors.baiBlueColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 15.0),
              ),
              const SizedBox(height: 25.0),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 50.0,
                    width: 50.0,
                    decoration: BoxDecoration(
                      color: isExpensive
                          ? BaiColors.paymentColor
                          : BaiColors.naHoraColor,
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 1,
                          spreadRadius: 2,
                          offset: const Offset(0.0, 2),
                          color: Colors.black.withOpacity(0.1),
                        )
                      ],
                    ),
                    child: Icon(
                        size: 25.0,
                        color: Colors.white,
                        isExpensive
                            ? Icons.home
                            : Icons.compare_arrows_outlined),
                  ),
                  const SizedBox(width: 10.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Pag Entidade Recargas Directas Unitel',
                        style: TextStyle(
                          color: BaiColors.baiBlueColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 10.0),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Row(
                            children: [
                              const Icon(
                                size: 16.0,
                                Icons.arrow_downward_rounded,
                                color: Colors.red,
                              ),
                              const Text(
                                'Kz 1.000,00',
                                style: TextStyle(
                                  color: BaiColors.baiBlueColor,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              SizedBox(width: size.width * 0.3 + 30),
                              const Padding(
                                padding: EdgeInsets.only(left: 16),
                                child: Icon(
                                  size: 18.0,
                                  Icons.arrow_forward_ios,
                                  color: BaiColors.baiBlueColor,
                                ),
                              )
                            ],
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
