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
            decoration: BoxDecoration(
                color: Colors.blue, borderRadius: BorderRadius.circular(20)),
          ),
          const SizedBox(
            height: 40,
          ),
          const Text(
            "Lorem Ipsum",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w600, fontSize: 24),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "lorem Ipsum is a dummy text to fill the blank placeholders",
            style: TextStyle(color: Color.fromARGB(255, 164, 164, 164)),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () {},
                child:
                    const Text("Skip", style: TextStyle(color: Colors.white)),
              )
            ],
          )
        ],
      ),
    );
  }
}
