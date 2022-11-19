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
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                height: 95.0,
                'assets/bai-logo.png',
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                ),
                child: Column(
                  children: [
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
                    const SizedBox(height: 20),
                    const RecoverPassWidget(),
                  ],
                ),
              ),
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
      ),
    );
  }
}
