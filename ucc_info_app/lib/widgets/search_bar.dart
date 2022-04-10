import 'package:flutter/material.dart';
import 'package:ucc_info_app/utils/consts.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 40.0),
          height: 50.0,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(50.0),
              boxShadow: [
                BoxShadow(
                  offset: const Offset(0, 5),
                  blurRadius: 5,
                  color: shadowColor.withOpacity(0.30),
                ),
              ]),
          child: Padding(
            padding: const EdgeInsets.only(left: defaultPadding),
            child: Row(
              children: const [
                Icon(Icons.search, size: 25.0, color: iconColor2),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: titleSearch,
                      hintStyle: TextStyle(
                        color: iconColor2,
                      ),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 12.0),
        SizedBox(
          height: 40.0,
          width: 160.0,
          child: ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
                primary: iconColor1,
                shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5)))),
            onPressed: () {
              print('Pressionado');
            },
            icon: const Icon(
              Icons.search,
            ),
            label: const Text(
              'Search',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }
}
