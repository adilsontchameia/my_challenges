import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../utils/constants.dart';
import '../../../../utils/theme_config.dart';
import '../widgets/top_carousel_card.dart';

class MySliverAppBar extends SliverPersistentHeaderDelegate {
  final double expandedHeight;

  MySliverAppBar({required this.expandedHeight});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Stack(
      clipBehavior: Clip.none,
      fit: StackFit.loose,
      children: [
        Container(
          color: BaiColors.defaultBlueColor,
        ),
        Center(
          child: Stack(
            children: [
              Center(
                child: SvgPicture.asset(
                  //    height: screenSize(context).height * 1,
                  width: 290,
                  'assets/bubbles.svg',
                  color:
                      const Color.fromARGB(255, 73, 173, 254).withOpacity(0.4),
                ),
              ),
              const Center(
                  child: CircleAvatar(
                radius: 30.0,
                backgroundImage: AssetImage('assets/profile-pic.jpg'),
                backgroundColor: Colors.red,
              )),
              Padding(
                padding: EdgeInsets.only(
                  top: screenSize(context).height * 0.1 + 30,
                  left: screenSize(context).height * 0.1 + 68,
                ),
                child: Center(
                  child: Row(
                    children: const [
                      Icon(
                        size: 25,
                        Icons.visibility_outlined,
                        color: Colors.white,
                      ),
                      SizedBox(width: 5),
                      Text(
                        'VER SALDO',
                        style: TextStyle(
                            fontSize: 13,
                            color: Colors.white,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        /*
        Center(
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Center(
                  child: Image.asset(
                    height: screenSize(context).height * 0.4,
                    'assets/boubles-home.png',
                    color: const Color.fromARGB(255, 73, 173, 254)
                        .withOpacity(0.4),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    vertical: screenSize(context).height * 0.1 + 32),
                child: const Center(
                    child: CircleAvatar(
                  radius: 30.0,
                  backgroundImage: AssetImage('assets/profile-pic.jpg'),
                  backgroundColor: Colors.red,
                )),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: screenSize(context).height * 0.1 + 105,
                  left: screenSize(context).height * 0.1 + 62,
                  right: screenSize(context).height * 0.1 + 50,
                ),
                child: Center(
                  child: Row(
                    children: const [
                      Icon(
                        size: 25,
                        Icons.visibility_outlined,
                        color: Colors.white,
                      ),
                      SizedBox(width: 5),
                      Text(
                        'VER SALDO',
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        */
        /*
        Center(
          child: Opacity(
            opacity: shrinkOffset / expandedHeight,
            child: const Text(
              "MySliverAppBar",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 23,
              ),
            ),
          ),
        ),
        */
        Positioned(
            top: expandedHeight / 1.2 - shrinkOffset,
            child: Opacity(
              opacity: (1 - shrinkOffset / expandedHeight),
              child: const TopCardsCarousel(),
            )),
      ],
    );
  }

  @override
  double get maxExtent => expandedHeight;

  @override
  double get minExtent => kToolbarHeight;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;
}
