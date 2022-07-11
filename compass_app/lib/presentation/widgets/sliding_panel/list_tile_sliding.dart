import 'package:flutter/material.dart';

class ListTileSliding extends StatelessWidget {
  const ListTileSliding({
    Key? key,
    required this.context,
    required this.icon,
    required this.title,
  }) : super(key: key);

  final BuildContext context;
  final IconData icon;
  final String title;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        height: 32.0,
        width: 32.0,
        decoration: BoxDecoration(
          border: Border.all(color: Theme.of(context).iconTheme.color!),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Icon(
          icon,
          color: Theme.of(context).iconTheme.color,
        ),
      ),
      title: Text(title),
    );
  }
}
