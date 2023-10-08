import 'package:flutter/material.dart';

class IntroTwo extends StatelessWidget {
  const IntroTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      decoration: const BoxDecoration(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Image container
          Container(
            height: MediaQuery.of(context).size.height * 0.5,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 216, 144, 34),
                borderRadius: BorderRadius.circular(20)),
          ),
          const SizedBox(
            height: 40,
          ),

          // Text
          const Column(
            children: [
              // Header
              Text(
                "Lorem Ipsum",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 24),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 10,
              ),

              // Paragraph
              Text(
                "lorem Ipsum is a dummy text to fill the blank placeholders my gee",
                style: TextStyle(color: Color.fromARGB(255, 164, 164, 164)),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
