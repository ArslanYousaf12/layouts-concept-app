import 'package:app_navigation/main.dart';
import 'package:flutter/material.dart';

class SafeAreaScreen extends StatelessWidget {
  const SafeAreaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const HomeScreen();
                  }));
                },
                child: Text('SafeAreaScreen')),
          ),
        ],
      )),
    );
  }
}
