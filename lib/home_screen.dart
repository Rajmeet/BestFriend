import 'package:best_friend/hotline_screen.dart';
import 'package:best_friend/chat_screen.dart';
import 'package:best_friend/custom_navbar.dart';
import 'package:best_friend/resource_screen.dart';
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
        backgroundColor: const Color.fromARGB(255, 172, 98, 209),
        title: const Text("Home Screen"),
      ),
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            child: Container(
              height: 1000,
              width: 1000,
              decoration: const BoxDecoration(
                gradient: RadialGradient(
                  colors: [
                    Color(0xffA579A6),
                    Color(0xff675277),
                    Color(0xff29243B),
                    Color(0xff220B33),
                  ],
                  radius: 1.3,
                  focal: Alignment(.25, .45),
                ),
                image: DecorationImage(
                  opacity: .7,
                  image: AssetImage("assets/happyTree.png"),
                ),
              ),
            ),
          ),
          Positioned(
            top: 5,
            left: 5,
            right: 5,
            child: Container(
              alignment: Alignment.center,
              child: const Text(
                  "Welcome to Bestfriend!\nYou are never too old\nto meet your new\nBestfriend.",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 32)),
            ),
          ),
        ],
      ),
      bottomNavigationBar: CustomNavBar(3),
    );
  }
}
