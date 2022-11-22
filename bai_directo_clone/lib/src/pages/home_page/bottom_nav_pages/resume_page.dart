import 'package:flutter/material.dart';

import '../../../../utils/theme_config.dart';
import '../sliver_app_bar/my_sliver_app_bar.dart';
import '../widgets/home_app_bar.dart';
import '../widgets/home_center_card.dart';

class ResumePage extends StatelessWidget {
  const ResumePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(45.0), child: HomeAppBar()),
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
            delegate: MySliverAppBar(expandedHeight: 200),
            pinned: false,
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Padding(
              padding: EdgeInsets.symmetric(
                  vertical: size.height * 0.110, horizontal: 5.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'MOVIMENTOS',
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.5),
                            fontSize: 25.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(height: 3.0),
                        Row(
                          children: [
                            Icon(
                              size: 15.0,
                              Icons.account_balance,
                              color: BaiColors.baiBlueColor.withOpacity(0.5),
                            ),
                            const SizedBox(width: 2.0),
                            const Text(
                              'CONTA 1548651245 17 895',
                              style: TextStyle(
                                  color: BaiColors.baiBlueColor,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 13.0),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 18.0),
                  const HomePageCenterCard(isExpensive: true),
                  const HomePageCenterCard(isExpensive: false),
                  const HomePageCenterCard(isExpensive: true),
                  const HomePageCenterCard(isExpensive: false),
                  const SizedBox(height: 20.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 35.0),
                    child: Text(
                      'CONTAS',
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.5),
                        fontSize: 25.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const SizedBox(height: 22.0),
                  const HomePageCenterCard(isExpensive: false),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}