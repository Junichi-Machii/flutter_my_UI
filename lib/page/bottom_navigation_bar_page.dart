import 'package:flutter/material.dart';
import 'package:flutter_color_gradient/bottom_screen/account.dart';
import 'package:flutter_color_gradient/bottom_screen/home.dart';
import 'package:flutter_color_gradient/bottom_screen/sarch.dart';
import 'package:flutter_color_gradient/ditile/custum_appbar.dart';
import 'package:flutter_color_gradient/notirer/bottom_nav_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BottomNavigationBarPage extends ConsumerWidget {
  const BottomNavigationBarPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final BottomNavigationBarModel bottomNavigationBarModel =
        ref.watch(BottomNavigationBarProvider);
    return BottomBarScreen(
      bottomNavigationBarModel: bottomNavigationBarModel,
    );
  }
}

class BottomBarScreen extends StatelessWidget {
  const BottomBarScreen({super.key, required this.bottomNavigationBarModel});

  final BottomNavigationBarModel bottomNavigationBarModel;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: const CustomRadialAppBar(title: Text('BottomNavigationBar')),
      body: PageView(
          controller: bottomNavigationBarModel.pageController,
          onPageChanged: (index) =>
              bottomNavigationBarModel.onPageChanged(index: index),
          children: const [
            HomeScreen(),
            SarchScreen(),
            AccountScreen(),
          ]),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: bottomNavigationBarModel.currentIndex,
        items: const [
          BottomNavigationBarItem(
              activeIcon: Icon(Icons.home),
              icon: Icon(Icons.home_outlined),
              label: 'Home'),
          BottomNavigationBarItem(
              activeIcon: Icon(Icons.search),
              icon: Icon(Icons.search_outlined),
              label: 'Search'),
          BottomNavigationBarItem(
              activeIcon: Icon(Icons.person),
              icon: Icon(Icons.person_outline),
              label: 'Account'),
        ],
        onTap: (index) => bottomNavigationBarModel.onTabTapped(index: index),
      ),
    );
  }
}
