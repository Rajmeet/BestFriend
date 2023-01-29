import 'package:flutter/material.dart';
import 'home_screen.dart';

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
      title: 'Best Friend',
      theme: ThemeData(
        primaryColor: const Color.fromARGB(255, 96, 209, 109)
      ),
      home: const HomeScreen(),
    );
  }
}
