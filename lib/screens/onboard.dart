import 'package:flutter/material.dart';

class Onboard extends StatelessWidget {
  const Onboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
      ),
      body: PageView(
        children: [
          Container(
            color: Colors.red,
          )
        ],
      ),
    );
  }
}
