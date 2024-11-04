import 'package:app_navigation/safe_area.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: OrientationBuilder(builder: (context, orientation) {
        if (orientation == Orientation.landscape) {
          return const LandScapeLayout();
        } else {
          return const PortraitLayout();
        }
      }),
    );
  }
}

class LandScapeLayout extends StatelessWidget {
  const LandScapeLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text('SecondScreen Landscape'),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const SafeAreaScreen();
            }));
          },
          child: Text('Go back to Safe area screen'),
        ),
      ],
    );
  }
}

class PortraitLayout extends StatelessWidget {
  const PortraitLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text('SecondScreen Portrait'),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const SafeAreaScreen();
            }));
          },
          child: Text('Go back to safearea screen'),
        ),
      ],
    );
  }
}
