import 'package:dropdown_menu_with_custom_behaviour/widgets/custom_circle_avatar/custom_circle_avatar.dart';
import 'package:flutter/material.dart';

import '../utils/screen_size.dart';
import '../widgets/buttons/cancel_button.dart';
import '../widgets/buttons/continue_button.dart';
import '../widgets/custom_dropdown.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/title_above_textfield.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(children: [
          Container(
            height: screenSize(context).height * 0.4,
            width: double.infinity,
            color: Colors.brown.shade800,
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 130.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Container(
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
                      child: Card(
                        color: Colors.white,
                        child: SizedBox(
                          // height: 560.0,
                          width: 350.0,
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Icon(Icons.arrow_back),
                                Center(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Center(
                                          child: CustomCircleAvatar(
                                              imgUrl:
                                                  'assets/profile_pic.jpg')),
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
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
