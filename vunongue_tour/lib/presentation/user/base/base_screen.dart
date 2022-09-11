import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vunongue_tour/helpers/consts/page_manager.dart';
import 'package:vunongue_tour/presentation/admin/create_place/create_place.dart';
import 'package:vunongue_tour/presentation/admin/login_screen/login_screen.dart';
import 'package:vunongue_tour/presentation/admin/sign_up_screen/sign_up_screen.dart';
import 'package:vunongue_tour/presentation/user/favorites_screen/favorites_screen.dart';
import 'package:vunongue_tour/presentation/user/home/home_screen.dart';
import 'package:vunongue_tour/presentation/user/mambos_da_banda/mambos_da_banda.dart';

class BaseScreen extends StatelessWidget {
  BaseScreen({Key? key}) : super(key: key);
  final PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) => PageManager(_pageController),
      child: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: const [
          //[0]
          HomeScreen(),
          //[1]
          FavoritesScreen(),
          //[2]
          MambosDaBandaScreen(),
          //[3]
          CreatePlaceScreen(),
          //[4]
          LoginScreen(),
          //[5]
          SignUpScreen()
        ],
      ),
    );
  }
}
