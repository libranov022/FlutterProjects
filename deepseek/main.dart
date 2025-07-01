import 'package:flutter/material.dart';
import 'login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Футбол в твоем смартфоне',
      theme: ThemeData(
        primarySwatch: Colors.green,
        fontFamily: 'Roboto', // или другой шрифт
      ),
      home: const LoginScreen(),
    );
  }
}