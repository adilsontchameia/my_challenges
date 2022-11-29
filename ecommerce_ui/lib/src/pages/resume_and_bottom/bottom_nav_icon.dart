import 'package:flutter/material.dart';

class NavIconButton extends StatelessWidget {
  const NavIconButton({
    Key? key,
    required this.imgUrl,
    required this.pageIndex,
    required this.onPressed,
  }) : super(key: key);
  final String imgUrl;
  final int pageIndex;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Column(
        children: [
          Image.asset(
            height: 25,
            imgUrl,
            color: pageIndex == pageIndex
                ? Colors.grey.shade700
                : Colors.purple.shade800,
          ),
        ],
      ),
    );
  }
}