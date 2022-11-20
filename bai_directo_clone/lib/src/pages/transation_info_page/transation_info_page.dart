import 'package:flutter/material.dart';

import 'widgets/transaction_app_bar.dart';
import 'widgets/transaction_banne.dart';
import 'widgets/small_transaction_info_card.dart';
import 'widgets/top_circular_icon.dart';
import 'widgets/transaction_info_card.dart';

class TransationInfoPage extends StatelessWidget {
  const TransationInfoPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              const MainBanner(),
              SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CustomAppBar(),
                    SizedBox(height: size.height * 0.22),
                    Stack(children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            CustomCircularIcon(
                                icon: Icons.mail_outline_outlined),
                            CustomCircularIcon(icon: Icons.file_download),
                          ],
                        ),
                      )
                    ]),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 25.0),
          TransactionInfoCard(size: size),
          const SizedBox(height: 5.0),
          SmallTransactionInfoCard(
              size: size,
              icon: Icons.calendar_today_rounded,
              text1: 'Data',
              text2: 'DATA',
              text3: '17 NOVEMBRO 2022'),
          const SizedBox(height: 5.0),
          SmallTransactionInfoCard(
              size: size,
              icon: Icons.info,
              text1: 'Outras Informações',
              text2: 'NÚMERO DE OPERAÇÃO',
              text3: '12345678'),
        ],
      ),
    ));
  }
}
