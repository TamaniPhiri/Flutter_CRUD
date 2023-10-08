import 'package:flutter/material.dart';

class IntroOne extends StatelessWidget {
  const IntroOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: const BoxDecoration(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.5,
            color: Colors.blue,
          ),
          const Text(
            "Lorem Ipsum",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w600, fontSize: 24),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 20,
          ),
          const Text(
            "lorem Ipsum is a dummy text to fill the blank placeholders",
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
