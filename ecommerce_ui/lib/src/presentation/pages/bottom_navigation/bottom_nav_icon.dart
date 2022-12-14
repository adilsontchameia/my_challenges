import 'package:flutter/material.dart';

class NavIconButton extends StatelessWidget {
  NavIconButton({
    Key? key,
    required this.imgUrl,
    required this.pageIndex,
    required this.onPressed,
  }) : super(key: key);
  final String imgUrl;
  final int pageIndex;
  final VoidCallback onPressed;
  final int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (() {
        int currentIndex = pageIndex;
      }),
      child: Column(
        children: [
          Image.asset(
            height: 25,
            imgUrl,
            color: _currentIndex == pageIndex
                ? Colors.grey.shade700
                : Colors.purple.shade800,
          ),
        ],
      ),
    );
  }
}
