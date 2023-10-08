import 'package:crud_dart/screens/intro_screens/intro_one.dart';
import 'package:crud_dart/screens/intro_screens/intro_three.dart';
import 'package:crud_dart/screens/intro_screens/intro_two.dart';
import 'package:flutter/material.dart';

class Onboard extends StatelessWidget {
  const Onboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        PageView(
          children: const [IntroOne(), IntroTwo(), IntroThree()],
        ),
        Container(
          alignment: const Alignment(0, 0.9),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () {},
                borderRadius: BorderRadius.circular(200),
                child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: const Text("Skip",
                        style: TextStyle(color: Colors.white))),
              ),
              const Text(". . .", style: TextStyle(color: Colors.white)),
              InkWell(
                onTap: () {},
                borderRadius: BorderRadius.circular(200),
                child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: const Text("Next",
                        style: TextStyle(color: Colors.white))),
              )
            ],
          ),
        )
      ]),
    );
  }
}
