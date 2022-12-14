import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      focusNode: FocusNode(
        canRequestFocus: false,
      ),
      decoration: InputDecoration(
          border: const OutlineInputBorder(),
          prefixIcon: const Icon(Icons.search),
          hintText: 'Search itens....',
          suffixIcon: Image.asset(
            'assets/settings_icon.png',
          )),
    );
  }
}
