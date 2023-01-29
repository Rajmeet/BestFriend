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
        title: Text("Home Screen"),
      ),
      bottomNavigationBar: CustomNavBar(0),
    );
  }
}
