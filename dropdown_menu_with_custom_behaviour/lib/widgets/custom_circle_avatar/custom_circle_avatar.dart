import 'package:flutter/material.dart';

class CustomCircleAvatar extends StatelessWidget {
  const CustomCircleAvatar(
      {Key? key, required this.imgUrl, required this.onTap})
      : super(key: key);
  final String imgUrl;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 100.0,
        width: 100.0,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(imgUrl), fit: BoxFit.cover),
          color: Colors.white,
          shape: BoxShape.circle,
        ),
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Align(
            alignment: Alignment.bottomRight,
            child: AddButton(
              icon: Icons.add,
            ),
          ),
        ),
      ),
    );
  }
}

class AddButton extends StatelessWidget {
  const AddButton({Key? key, required this.icon}) : super(key: key);

  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(30.0)),
      child: Icon(
        icon,
        color: Colors.amber,
      ),
    );
  }
}
