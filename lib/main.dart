import 'package:flutter/material.dart';
import 'package:grocery_ui/screens/cart_screen.dart';
import 'package:grocery_ui/screens/welcome_screen.dart';
import 'package:grocery_ui/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const WelcomeScreen(),
    );
  }
}

