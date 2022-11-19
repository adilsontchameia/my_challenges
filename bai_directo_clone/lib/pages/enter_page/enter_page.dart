import 'package:flutter/material.dart';

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
                    const CustomTextField(text: 'Nº / NOME DA ADESÃO'),
                    const SizedBox(height: 10),
                    const CustomTextField(text: 'PALAVRA-CHAVE'),
                    const SizedBox(height: 15),
                    LoginButtonWithIcon(
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
                    InkWell(
                      onTap: (() => print('Clicado')),
                      child: const Text('RECUPERAR CREDENCIAIS',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                  ],
                ),
              ),
              Center(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      BottonButtons(icon: Icons.location_on_outlined),
                      BottonButtons(icon: Icons.phone),
                      BottonButtons(icon: Icons.monetization_on),
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textCapitalization: TextCapitalization.words,
      decoration: InputDecoration(
          hintStyle: const TextStyle(color: Colors.white),
          contentPadding: const EdgeInsets.all(20.0),
          hintText: text),
      style: const TextStyle(
          fontSize: 14.0, color: Colors.white, fontWeight: FontWeight.bold),
    );
  }
}

class BottonButtons extends StatelessWidget {
  const BottonButtons({
    Key? key,
    required this.icon,
  }) : super(key: key);
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          iconSize: 30.0,
          color: Colors.white,
          onPressed: () {},
          icon: Icon(icon),
        ),
        const Text(
          'AGENCIAS',
          style: TextStyle(
            fontSize: 11.0,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}

class LoginButtonWithIcon extends StatelessWidget {
  const LoginButtonWithIcon({
    Key? key,
    required this.onTap,
    required this.text,
  }) : super(key: key);
  final VoidCallback onTap;
  final String text;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
          height: 45.0,
          //  width: 200.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: const Color.fromRGBO(0, 163, 224, 1)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                text,
                style: const TextStyle(color: Colors.white, fontSize: 13.0),
              ),
              const SizedBox(width: 2.5),
              const Icon(
                Icons.arrow_forward,
                color: Colors.white,
              ),
            ],
          )),
    );
  }
}

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key? key,
    required this.onTap,
    required this.text,
    required this.color,
    required this.textColor,
  }) : super(key: key);
  final VoidCallback onTap;
  final String text;
  final Color color, textColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
          height: 45.0,
          //  width: 200.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0), color: color),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                text,
                style: TextStyle(
                    color: textColor,
                    fontSize: 12.0,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(width: 2.5),
              const Icon(
                Icons.arrow_forward,
                color: Colors.white,
              ),
            ],
          )),
    );
  }
}
