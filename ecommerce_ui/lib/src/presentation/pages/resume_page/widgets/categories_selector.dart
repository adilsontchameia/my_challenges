import 'package:flutter/material.dart';

class CategorySelector extends StatefulWidget {
  final List<String>? category;
  const CategorySelector({super.key, this.category});

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
        padding: const EdgeInsets.only(
          left: 12,
        ),
        child: GestureDetector(
          onTap: () {
            setState(() {
              _currentIndex = index;
            });
          },
          child: Column(
            children: [
              Text(
                category,
                style: TextStyle(
                  color: _isSelected ? Colors.black : Colors.grey,
                  fontSize: _isSelected ? 15 : 13,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                width: 5,
                color: Colors.black,
              )
            ],
          ),
        ),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Row(
            children: _buildCategories(),
          ),
        ],
      ),
    );
  }
}
