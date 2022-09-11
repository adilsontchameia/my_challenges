import 'package:flutter/material.dart';
import 'package:vunongue_tour/theme/theme.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key, this.text}) : super(key: key);
  final String? text;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(text!,
          textAlign: TextAlign.center,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0)),
      actions: const [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: InkWell(
            child: CircleAvatar(
              radius: 22.0,
              backgroundImage: AssetImage('assets/onboard-image.jpg'),
              backgroundColor: VunongueColors.blue,
            ),
          ),
        )
      ],
    );
  }
}
