import 'package:best_friend/call_screen.dart';
import 'package:best_friend/chat_screen.dart';
import 'package:best_friend/custom_navbar.dart';
import 'package:best_friend/resources.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 77, 190, 90),
        title: Text("Home Screen"),
      ),
      bottomNavigationBar: CustomNavBar(3),
    );
  }
}
