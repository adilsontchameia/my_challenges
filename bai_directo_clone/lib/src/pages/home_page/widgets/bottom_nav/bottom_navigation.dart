import 'package:flutter/material.dart';

class HomeBottomNav extends StatelessWidget {
  const HomeBottomNav({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.red,
      // shape: const CircularNotchedRectangle(),
      child: SizedBox(
        height: 100,
        //55
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Column(
                children: const [
                  Icon(
                    Icons.abc,
                    size: 30.0,
                  ),
                  Text(
                    'RESUMO',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
