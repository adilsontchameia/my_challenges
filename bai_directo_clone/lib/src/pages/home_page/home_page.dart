import 'package:bai_directo_clone/src/pages/home_page/bottom_nav_pages/menu_page.dart';
import 'package:bai_directo_clone/src/pages/home_page/bottom_nav_pages/payments_page.dart';
import 'package:bai_directo_clone/src/pages/home_page/bottom_nav_pages/resume_page.dart';
import 'package:bai_directo_clone/src/pages/home_page/bottom_nav_pages/transfer_page.dart';
import 'package:bai_directo_clone/utils/theme_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pageIndex = 0;

  final pages = [
    const ResumePage(),
    const TransferPage(),
    const PaymentsPage(),
    const MenuPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: BaiColors.scaffoldHomeColor,
        bottomNavigationBar: _buildMyNavBar(context),
        body: pages[pageIndex]);
  }

  Container _buildMyNavBar(BuildContext context) {
    return Container(
        height: 55,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              NavIconButton(
                  title: 'RESUMO',
                  imgUrl: 'assets/home.svg',
                  pageIndex: 0,
                  onPressed: (() => setState(() {
                        pageIndex = 0;
                      }))),
              NavIconButton(
                  title: 'TRANSFERIR',
                  imgUrl: 'assets/transfer.svg',
                  pageIndex: 1,
                  onPressed: (() => setState(() {
                        pageIndex = 1;
                      }))),
              NavIconButton(
                  title: 'PAGAR',
                  imgUrl: 'assets/payments.svg',
                  pageIndex: pageIndex,
                  onPressed: (() => setState(() {
                        pageIndex = 2;
                      }))),
              NavIconButton(
                  title: 'MENU',
                  imgUrl: 'assets/menu.svg',
                  pageIndex: pageIndex,
                  onPressed: (() => setState(() {
                        pageIndex = 3;
                      }))),
            ],
          ),
        ));
  }
}

class NavIconButton extends StatelessWidget {
  const NavIconButton({
    Key? key,
    required this.imgUrl,
    required this.pageIndex,
    required this.onPressed,
    required this.title,
  }) : super(key: key);
  final String imgUrl, title;
  final int pageIndex;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Column(
        children: [
          SvgPicture.asset(
            height: 25,
            imgUrl,
            color: pageIndex != pageIndex
                ? BaiColors.defaultBlueColor
                : Colors.black.withOpacity(0.5),
          ),
          Text(
            title,
            style: TextStyle(
                color: pageIndex != pageIndex
                    ? BaiColors.defaultBlueColor
                    : Colors.black.withOpacity(0.5),
                fontSize: 12,
                overflow: TextOverflow.ellipsis,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
