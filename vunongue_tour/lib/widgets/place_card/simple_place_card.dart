import 'package:flutter/material.dart';

class SimplePlaceCard extends StatelessWidget {
  const SimplePlaceCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(6.0),
      height: 92.0,
      width: 320.0,
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(0, 0),
            blurRadius: 3.0,
            spreadRadius: 5.0,
          )
        ],
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(10.0),
        ),
      ),
      child: Expanded(
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
                        height: 80.0,
                        image: AssetImage('assets/image-1.jpg')))),
            const SizedBox(width: 10.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                SizedBox(height: 5.0),
                Text('Museu Nacional',
                    overflow: TextOverflow.ellipsis,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0)),
                SizedBox(height: 2.0),
                Text('🛰️ Museu Historico'),
                SizedBox(height: 2.0),
                Text('⭐ 4.0 (Classificacao)'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
