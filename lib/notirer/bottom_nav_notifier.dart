//package
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
// constants

final BottomNavigationBarProvider = ChangeNotifierProvider((ref) {
  return BottomNavigationBarModel();
});

class BottomNavigationBarModel extends ChangeNotifier {
  int currentIndex = 0;

  late PageController pageController;

  BottomNavigationBarModel() {
    init();
  }

  void init() {
    pageController = PageController(initialPage: currentIndex);
    notifyListeners();
  }

  void onPageChanged({required int index}) {
    currentIndex = index;
    notifyListeners();
  }

  void onTabTapped({required int index}) {
    pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 400),
      curve: Curves.easeInOut,
    );
  }

  void setPageController() {
    pageController = PageController(initialPage: currentIndex);
    notifyListeners();
  }
}
