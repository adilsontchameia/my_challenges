import 'package:flutter/material.dart';

import '../utils/screen_size.dart';
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Center(
                                      child: CircleAvatar(
                                        radius: 55,
                                        backgroundColor: Colors.red,
                                      ),
                                    ),
                                    const SizedBox(height: 20.0),
                                    const TitleWidget(title: 'Name'),
                                    const SizedBox(height: 15),
                                    TextFieldWidget(
                                      text: "Full Name",
                                      icon: Icons.person,
                                    ),
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
                                    ),
                                    const SizedBox(height: 20),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: const [
                                        CancelButton(),
                                        ContinueButton(),
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

class ContinueButton extends StatelessWidget {
  const ContinueButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 135,
      height: 40,
      color: Colors.amber,
      child: const Center(
          child: Text(
        'Continue',
        style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15.0),
      )),
    );
  }
}

class CancelButton extends StatelessWidget {
  const CancelButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 135,
      height: 40,
      decoration: BoxDecoration(border: Border.all()),
      child: const Center(
          child: Text(
        'Cancel',
        style: TextStyle(
            color: Colors.black, fontWeight: FontWeight.bold, fontSize: 15.0),
      )),
    );
  }
}
