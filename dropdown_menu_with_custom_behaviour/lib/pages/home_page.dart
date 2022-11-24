import 'package:dropdown_menu_with_custom_behaviour/utils/screen_size.dart';
import 'package:flutter/material.dart';

import '../widgets/buttons/cancel_button.dart';
import '../widgets/buttons/continue_button.dart';
import '../widgets/custom_circle_avatar/custom_circle_avatar.dart';
import '../widgets/custom_dropdown.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/title_above_textfield.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Column(
          children: [
            Container(
              color: Colors.brown.shade700,
              height: screenSize(context).height * 0.4,
              width: double.infinity,
            )
          ],
        ),
        Positioned(
          bottom: 0,
          left: 5,
          right: 5,
          top: screenSize(context).height * 0.2 + 20,
          child: Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: 1,
                spreadRadius: 1,
              )
            ]),
            child: Card(
              color: Colors.white,
              child: SizedBox(
                height: screenSize(context).height * 0.70,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Icon(Icons.arrow_back),
                        Center(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Center(
                                  child: CustomCircleAvatar(
                                imgUrl: 'assets/profile_pic.jpg',
                                onTap: () => print('Tapped'),
                              )),
                              const SizedBox(height: 20.0),
                              const TitleWidget(title: 'Name'),
                              const SizedBox(height: 15),
                              TextFieldWidget(
                                  text: "Full Name",
                                  icon: Icons.person,
                                  isNumeric: false),
                              const SizedBox(height: 15),
                              const TitleWidget(title: 'Ocupation'),
                              const SizedBox(height: 15),
                              const DropdownWidget(),
                              const SizedBox(height: 20),
                              const TitleWidget(title: 'Phone Number'),
                              const SizedBox(height: 15),
                              TextFieldWidget(
                                  text: "+244 942 *** ***",
                                  icon: Icons.phone,
                                  isNumeric: true),
                              const SizedBox(height: 50),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  CancelButton(
                                    onTap: (() => print('Canceled.')),
                                  ),
                                  ContinueButton(
                                    onTap: () => print('Continued.'),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}

/*
   Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  spreadRadius: 0.6,
                  blurRadius: 10,
                  offset: const Offset(0, 0.2),
                ),
              ],
            ),
            child: Center(
              child: SingleChildScrollView(
                child: Card(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Icon(Icons.arrow_back),
                        Center(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Center(
                                  child: CustomCircleAvatar(
                                imgUrl: 'assets/profile_pic.jpg',
                                onTap: () => print('Tapped'),
                              )),
                              const SizedBox(height: 20.0),
                              const TitleWidget(title: 'Name'),
                              const SizedBox(height: 15),
                              TextFieldWidget(
                                  text: "Full Name",
                                  icon: Icons.person,
                                  isNumeric: false),
                              const SizedBox(height: 20),
                              const TitleWidget(title: 'Ocupation'),
                              const SizedBox(height: 5),
                              const DropdownWidget(),
                              const SizedBox(height: 20),
                              const TitleWidget(title: 'Phone Number'),
                              const SizedBox(height: 5),
                              TextFieldWidget(
                                  text: "+244 942 *** ***",
                                  icon: Icons.phone,
                                  isNumeric: true),
                              const SizedBox(height: 20),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  CancelButton(
                                    onTap: (() => print('Canceled.')),
                                  ),
                                  ContinueButton(
                                    onTap: () => print('Continued.'),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
          */