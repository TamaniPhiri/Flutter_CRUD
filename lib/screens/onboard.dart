import 'package:crud_dart/screens/intro_screens/intro_one.dart';
import 'package:flutter/material.dart';

class Onboard extends StatelessWidget {
  const Onboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          const IntroOne(),
          Container(
            color: Colors.amber,
          ),
          Container(
            color: Colors.red,
          )
        ],
      ),
    );
  }
}
