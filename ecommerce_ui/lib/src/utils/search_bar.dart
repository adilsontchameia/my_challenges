import 'package:ecommerce_ui/src/utils/constants.dart';
import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: customPurpleColor,
      focusNode: FocusNode(
        canRequestFocus: false,
      ),
      decoration: InputDecoration(
          fillColor: scaffoldColor,
          filled: true,
          border: const OutlineInputBorder(),
          prefixIcon: const Icon(Icons.search),
          hintText: 'Search itens....',
          suffixIcon: Image.asset(
            'assets/settings_icon.png',
          )),
    );
  }
}
