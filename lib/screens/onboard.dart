import 'package:crud_dart/screens/auth_screens/register_screen.dart';
import 'package:crud_dart/screens/intro_screens/intro_one.dart';
import 'package:crud_dart/screens/intro_screens/intro_three.dart';
import 'package:crud_dart/screens/intro_screens/intro_two.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Onboard extends StatefulWidget {
  const Onboard({super.key});

  @override
  State<Onboard> createState() => _OnboardState();
}

class _OnboardState extends State<Onboard> {
  final PageController _controller = PageController();

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
              onLastPage = (index == 2);
            });
          },
        ),

        // Onboard controllers
        Container(
          alignment: const Alignment(0, 0.9),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // Skip button
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

              // dot indicators
              SmoothPageIndicator(
                effect: const ExpandingDotsEffect(
                    dotColor: Colors.grey,
                    activeDotColor: Color.fromARGB(255, 175, 39, 199)),
                controller: _controller,
                count: 3,
                onDotClicked: (index) {
                  _controller.animateToPage(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.bounceIn,
                      index);
                },
              ),

              // conditional buttons
              onLastPage
                  ? InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    const RegisterScreen()));
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
