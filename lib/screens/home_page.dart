import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const DrawerButton(),
      ),
      drawer: const Drawer(),
      body: const Text(
        "Home",
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
