import 'package:flutter/material.dart';

class PageManager {
  PageManager(this._pageController);
  final PageController _pageController;
  int page = 0;
  void setPage(int value) {
    //Nao vai a outro lugar caso ja esteja na pagina corrente.
    if (value == page) return;
    page = value;
    _pageController.jumpToPage(value);
  }
}
