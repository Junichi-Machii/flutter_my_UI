import 'package:flutter/material.dart';
import 'package:flutter_color_gradient/page/start_screen.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 9,
        title: Text(title),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: <Color>[Colors.black, Colors.blue]),
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color.fromRGBO(77, 8, 90, 1), Colors.purple],
            begin: Alignment.centerLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: StartScreen(),
      ),
    );
  }
}
