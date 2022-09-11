import 'package:flutter/material.dart';
import 'package:slide_to_act/slide_to_act.dart';

import '../../home/home_screen.dart';

class CustomBottomViewer extends StatelessWidget {
  const CustomBottomViewer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 150.0,
        width: 450.0,
        decoration: BoxDecoration(
            color: Colors.blue.shade100,
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(40.0),
                topRight: Radius.circular(40.0)),
            boxShadow: const [
              BoxShadow(
                color: Colors.black,
                offset: Offset(0, -2),
                blurRadius: 5.0,
              )
            ]),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: SizedBox(
                  height: 95.0,
                  width: 360.0,
                  child: SlideAction(
                    sliderButtonIconPadding: 15.0,
                    sliderButtonIconSize: 25.0,
                    elevation: 0.0,
                    text: 'Deslize para iniciar',
                    sliderRotate: false,
                    innerColor: Colors.transparent,
                    outerColor: Colors.blue.shade100,
                    textStyle: const TextStyle(color: Colors.blue),
                    sliderButtonIcon: Icon(
                      Icons.adaptive.arrow_forward,
                      color: Colors.blue,
                    ),
                    borderRadius: 10.0,
                    animationDuration: const Duration(seconds: 1),
                    onSubmit: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomeScreen()));
                    },
                  ),
                ),
              ),
              const SizedBox(height: 5.0),
              Text(
                'Privacy Police',
                style: TextStyle(
                    fontWeight: FontWeight.w200,
                    color: Colors.grey.withOpacity(0.5)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
