import 'package:flutter/material.dart';

class EnterPage extends StatelessWidget {
  const EnterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Image(
              height: double.infinity,
              fit: BoxFit.fitHeight,
              image: AssetImage('assets/quedas.jpg')),
          Container(
            color: const Color.fromARGB(232, 0, 43, 107).withOpacity(0.5),
            height: double.infinity,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 90,
                width: 90,
                color: Colors.white,
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
                    Container(height: 50.0, color: Colors.blue),
                    const SizedBox(height: 10),
                    Container(height: 50.0, color: Colors.white),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  BottonButtons(icon: Icons.location_on_outlined),
                  BottonButtons(icon: Icons.phone),
                  BottonButtons(icon: Icons.monetization_on),
                ],
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
      //autocorrect: true,
      textCapitalization: TextCapitalization.words,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(20.0),
        hintText: text,
      ),
      style: const TextStyle(
        fontSize: 14.0,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
      validator: (placeName) {
        if (placeName!.length < 3) {
          return placeName;
        } else {
          return null;
        }
      },
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
