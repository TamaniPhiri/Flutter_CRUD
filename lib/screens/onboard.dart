import 'package:crud_dart/screens/intro_screens/intro_one.dart';
import 'package:crud_dart/screens/intro_screens/intro_two.dart';
import 'package:flutter/material.dart';

class Onboard extends StatelessWidget {
  const Onboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          const IntroOne(),
          const IntroTwo(),
          Container(
            color: Colors.red,
          )
        ],
      ),
    );
  }
}
