import 'package:flutter/material.dart';
import 'package:flutter_color_gradient/page/bottom_navigation_bar_page.dart';
import 'package:flutter_color_gradient/page/custom_appbar_page.dart';

void toCustomAppBarPage({required BuildContext context}) => Navigator.push(
    context, MaterialPageRoute(builder: (context) => CustomAppBarPage()));

void toBottomNavigationBarPage({required BuildContext context}) =>
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => BottomNavigationBarPage()));
