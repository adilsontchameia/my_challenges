import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SimplePlaceCard extends StatelessWidget {
  const SimplePlaceCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(6.0),
      height: 95.0,
      width: 380.0,
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(0, 0),
            blurRadius: 2.0,
            spreadRadius: 4.0,
          )
        ],
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(10.0),
        ),
      ),
      child: Row(
        children: [
          Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(10.0),
                ),
              ),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: const Image(
                      height: 80.0, image: AssetImage('assets/image-1.jpg')))),
          const SizedBox(width: 10.0),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Center(
                  child: Text('Paisagem Exemplo',
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16.0)),
                ),
                ListTile(
                    text: 'Miradouro Da Leba',
                    icon: FontAwesomeIcons.mapLocation),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                      text: 'Classificacao: ', icon: FontAwesomeIcons.star),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ListTile extends StatelessWidget {
  ListTile({
    Key? key,
    required this.text,
    required this.icon,
  }) : super(key: key);
  String text;
  IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FaIcon(
          icon,
          size: 18.0,
        ),
        Text(text),
      ],
    );
  }
}
