import 'package:flutter/material.dart';
import 'package:ucc_info_app/utils/consts.dart';
import 'package:ucc_info_app/widgets/body_home.dart';
import 'package:ucc_info_app/widgets/bottom_nav.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: backgroundColor,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20, top: 10),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.person,
                color: Colors.grey,
              ),
              iconSize: 40.0,
            ),
          ),
        ],
      ),
      body: const HomeBody(),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
