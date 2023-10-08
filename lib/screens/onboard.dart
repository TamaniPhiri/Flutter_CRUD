import 'package:crud_dart/screens/intro_screens/intro_one.dart';
import 'package:crud_dart/screens/intro_screens/intro_three.dart';
import 'package:crud_dart/screens/intro_screens/intro_two.dart';
import 'package:flutter/material.dart';

class Onboard extends StatefulWidget {
  const Onboard({super.key});

  @override
  State<Onboard> createState() => _OnboardState();
}

class _OnboardState extends State<Onboard> {
  final _controller = PageController();

  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        PageView(
          controller: _controller,
          children: const [IntroOne(), IntroTwo(), IntroThree()],
          onPageChanged: (index) {
            setState(() {
              onLastPage == (index == 2);
            });
          },
        ),
        Container(
          alignment: const Alignment(0, 0.9),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () {
                  _controller.jumpToPage(2);
                },
                borderRadius: BorderRadius.circular(200),
                child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: const Text("Skip",
                        style: TextStyle(color: Colors.white))),
              ),
              const Text(". . .", style: TextStyle(color: Colors.white)),
              onLastPage
                  ? InkWell(
                      onTap: () {
                        _controller.nextPage(
                            duration: const Duration(milliseconds: 400),
                            curve: Curves.bounceInOut);
                      },
                      borderRadius: BorderRadius.circular(200),
                      child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          child: const Text("Done",
                              style: TextStyle(color: Colors.white))),
                    )
                  : InkWell(
                      onTap: () {
                        _controller.nextPage(
                            duration: const Duration(milliseconds: 400),
                            curve: Curves.bounceInOut);
                      },
                      borderRadius: BorderRadius.circular(200),
                      child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          child: const Text("t",
                              style: TextStyle(color: Colors.white))),
                    )
            ],
          ),
        )
      ]),
    );
  }
}
