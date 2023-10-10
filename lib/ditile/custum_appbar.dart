import 'package:flutter/material.dart';

class CustomRadialAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const CustomRadialAppBar({
    Key? key,
    this.title,
    this.leading,
    this.actions,
    this.elevation = 2.0,
    this.listColor = const [
      Colors.lightBlue,
      Colors.greenAccent,
      Colors.lightGreen
    ],
  }) : super(key: key);
  final Widget? title;
  final Widget? leading;
  final double elevation;
  final List<Widget>? actions;
  final List<Color> listColor;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: elevation,
      child: Container(
        decoration: BoxDecoration(
          gradient: RadialGradient(
            radius: 2.5,
            stops: [
              0.0,
              0.27,
              1.0,
            ],
            colors: listColor,
          ),
        ),
        child: AppBar(
          centerTitle: true,
          leading: leading,
          elevation: 0.0,
          title: title,
          backgroundColor: Colors.transparent,
          actions: actions,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
