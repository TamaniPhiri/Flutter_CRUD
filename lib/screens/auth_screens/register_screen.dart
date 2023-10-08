import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              children: [
                const Text(
                  "Welcome",
                  style: TextStyle(color: Colors.white, fontSize: 32),
                ),
                Container(
                  color: Colors.white,
                  child: const TextField(
                    decoration: InputDecoration(border: InputBorder.none),
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                Container(
                  color: Colors.white,
                  child: const TextField(
                    decoration: InputDecoration(border: InputBorder.none),
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                Container(
                  color: Colors.white,
                  child: const TextField(
                    decoration: InputDecoration(border: InputBorder.none),
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                InkWell(
                  borderRadius: BorderRadius.circular(20),
                  onTap: () {},
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.all(20),
                    child: const Text(
                      "Sign up",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
