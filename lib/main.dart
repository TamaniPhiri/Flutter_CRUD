import 'package:crud_dart/screens/auth_screens/login_screen.dart';
import 'package:flutter/material.dart';

import 'screens/auth_screens/register_screen.dart';
import 'screens/onboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
                seedColor: const Color.fromARGB(255, 26, 26, 26))
            .copyWith(background: Colors.black12),
      ),
      home: const Onboard(),
      routes: {
        "/": (context) => const LoginScreen(),
        "/register": (context) => const RegisterScreen()
      },
    );
  }
}
