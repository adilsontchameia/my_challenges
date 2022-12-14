import 'package:ecommerce_ui/src/presentation/pages/head_phones_details/head_phones.dart';
import 'package:flutter/material.dart';

class CategorySelector extends StatefulWidget {
  final List<String>? category;

  const CategorySelector({
    super.key,
    this.category,
  });

  @override
  State<CategorySelector> createState() => _CategorySelectorState();
}

class _CategorySelectorState extends State<CategorySelector> {
  int _currentIndex = 0;
  bool _isSelected = true;

  List<Widget> _buildCategories() {
    return widget.category!.map((category) {
      var index = widget.category!.indexOf(category);
      _isSelected = _currentIndex == index;
      return Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 4,
        ),
        child: GestureDetector(
          onTap: () {
            setState(() {
              _currentIndex = index;
              //Number of categories created in HomePage
              List<int> pagesIndex = [0, 1, 2, 3, 4, 5, 6];
              if (_currentIndex == pagesIndex[0]) {
                return;
              } else if (_currentIndex == pagesIndex[1]) {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const HeadPhonesPage()),
                );
                //After closing new page will return to All section in categories.
                _currentIndex = 0;
              }
            });
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                category,
                style: TextStyle(
                  color: _isSelected ? Colors.black : Colors.grey,
                  fontSize: _isSelected ? 17 : 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                width: 20.0,
                height: 1.5,
                color: _isSelected ? Colors.black : Colors.transparent,
              )
            ],
          ),
        ),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      height: 30.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: _buildCategories(),
          ),
        ],
      ),
    );
  }
}
