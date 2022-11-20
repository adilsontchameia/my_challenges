import 'package:bai_directo_clone/utils/constants.dart';
import 'package:flutter/material.dart';

class HomeMainBanner extends StatelessWidget {
  const HomeMainBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: screenSize(context).height * 0.4,
          width: double.infinity,
          color: const Color.fromRGBO(0, 163, 224, 1),
        ),
        Padding(
          padding: const EdgeInsets.all(25.0),
          child: Center(
            child: Image.asset(
              height: screenSize(context).height * 0.3,
              'assets/boubles-home.png',
              color: const Color.fromARGB(255, 73, 173, 254).withOpacity(0.4),
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
    );
  }
}
