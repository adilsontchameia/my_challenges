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
        padding: const EdgeInsets.only(
          left: 13,
        ),
        child: GestureDetector(
          onTap: () {
            setState(() {
              _currentIndex = index;
            });
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                category,
                style: TextStyle(
                  color: _isSelected ? Colors.black : Colors.grey,
                  fontSize: _isSelected ? 16 : 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                width: 20.0,
                height: 2.5,
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
            children: _buildCategories(),
          ),
        ],
      ),
    );
  }
}
