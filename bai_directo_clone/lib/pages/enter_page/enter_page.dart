import 'package:flutter/material.dart';

import 'widgets/bottom_buttons.dart';
import 'widgets/custom_button_with_icon.dart';
import 'widgets/custom_text_field.dart';
import 'widgets/default_button.dart';
import 'widgets/recover_pass.dart';

class EnterPage extends StatelessWidget {
  const EnterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        const Image(
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
            image: AssetImage('assets/bai-background.jpg')),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  Image.asset(
                    height: 100.0,
                    'assets/bai-logo.png',
                  ),
                  const SizedBox(height: 50.0),
                  const CustomTextField(
                    labelText: 'Nº / NOME DA ADESÃO',
                    isNumeric: false,
                  ),
                  const SizedBox(height: 10.0),
                  const CustomTextField(
                    labelText: 'PALAVRA-CHAVE',
                    isNumeric: true,
                  ),
                  const SizedBox(height: 20.0),
                  ButtonWithIcon(
                    onTap: () {},
                    text: 'ENTRAR',
                  ),
                  const SizedBox(height: 10.0),
                  DefaultButton(
                      onTap: () {},
                      text: 'ADERIR',
                      color: Colors.white,
                      textColor: const Color.fromRGBO(0, 163, 224, 1)),
                  const SizedBox(height: 25),
                  const RecoverPassWidget()
                ],
              ),
            ),
            const SizedBox(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                BottomButtons(icon: Icons.location_on_outlined),
                BottomButtons(icon: Icons.phone),
                BottomButtons(icon: Icons.monetization_on),
              ],
            )
          ],
        ),
      ],
    ));
  }
}

/*

          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Column(
              children: [
                Positioned(
                  left: 100,
                  child: Column(
                    children: [
                      Image.asset(
                        height: 95.0,
                        'assets/bai-logo.png',
                      ),
                      const CustomTextField(
                        labelText: 'Nº / NOME DA ADESÃO',
                      ),
                      const SizedBox(height: 10),
                      const CustomTextField(
                        labelText: 'PALAVRA-CHAVE',
                      ),
                      const SizedBox(height: 15),
                      ButtonWithIcon(
                        onTap: () {},
                        text: 'ENTRAR',
                      ),
                      const SizedBox(height: 10),
                      DefaultButton(
                        onTap: () {},
                        text: 'ADERIR',
                        color: Colors.white,
                        textColor: const Color.fromRGBO(0, 163, 224, 1),
                      ),
                      const SizedBox(height: 25),
                      const RecoverPassWidget(),
                    ],
                  ),
                )
              ],
            )
          ]),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              BottomButtons(icon: Icons.location_on_outlined),
              BottomButtons(icon: Icons.phone),
              BottomButtons(icon: Icons.monetization_on),
            ],
          )
        ],
      ),
*/
