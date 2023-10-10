import 'package:flutter/material.dart';
import 'package:flutter_color_gradient/ditile/custum_appbar.dart';

class CustomAppBarPage extends StatelessWidget {
  const CustomAppBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomRadialAppBar(
        listColor: [
          Color.fromARGB(255, 163, 172, 177),
          const Color.fromARGB(255, 15, 155, 87),
          Color.fromARGB(255, 54, 77, 29)
        ],
        title: Text(
          "CustomAppBart",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        color: Colors.grey.shade900.withOpacity(0.5),
        child: Center(
          child: Container(
            width: 300,
            height: 300,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              boxShadow: [
                BoxShadow(
                  color: Colors.black87,
                  offset: Offset(15, 20),
                  blurRadius: 50,
                  blurStyle: BlurStyle.normal,
                )
              ],
              gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(77, 8, 90, 10),
                  Colors.purple.withOpacity(0.9)
                ],
                stops: [0.0, 0.9],
                begin: FractionalOffset.centerLeft,
                end: FractionalOffset.bottomRight,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
