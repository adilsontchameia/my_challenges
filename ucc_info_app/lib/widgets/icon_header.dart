import 'package:flutter/material.dart';
import 'package:ucc_info_app/utils/consts.dart';

class IconHeader extends StatefulWidget {
  @required
  final IconData icon;

  const IconHeader({Key? key, required this.icon}) : super(key: key);

  @override
  State<IconHeader> createState() => _IconHeaderState();
}

int selectedIndex = 0;

class _IconHeaderState extends State<IconHeader> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 60.0,
        height: 60.0,
        child: Icon(widget.icon, color: iconColor1, size: 50.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 5),
              blurRadius: 5,
              color: shadowColor.withOpacity(0.30),
            ),
          ],
        ),
      ),
    );
  }
}
