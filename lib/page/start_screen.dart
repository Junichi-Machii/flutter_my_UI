import 'package:flutter/material.dart';
import 'package:flutter_color_gradient/constants/routes.dart' as routes;

class StartScreen extends StatelessWidget {
  StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [Color.fromRGBO(77, 8, 90, 1), Colors.purple],
              begin: Alignment.centerLeft,
              end: Alignment.bottomRight,
              stops: [0.1, 0.9]),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shadowColor: Color.fromARGB(221, 0, 0, 0),
                  elevation: 20,
                ),
                onPressed: () => routes.toCustomAppBarPage(context: context),
                child: Text('CustomAppBarPage'),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shadowColor: Color.fromARGB(221, 0, 0, 0),
                  elevation: 20,
                ),
                onPressed: () =>
                    routes.toBottomNavigationBarPage(context: context),
                child: const Text('BottomNavigationBarPage'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
