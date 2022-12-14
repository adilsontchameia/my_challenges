import 'package:flutter/material.dart';

class NavIconButton extends StatelessWidget {
  const NavIconButton(
      {Key? key,
      required this.imgUrl,
      required this.pageIndex,
      required this.onPressed,
      this.color})
      : super(key: key);
  final String imgUrl;
  final int pageIndex;
  final VoidCallback onPressed;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Column(
        children: [
          Image.asset(height: 25, imgUrl, color: color),
        ],
      ),
    );
  }
}
