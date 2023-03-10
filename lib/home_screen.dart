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

// class _HomeScreenState extends State<HomeScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: const Color.fromARGB(255, 172, 98, 209),
//         title: Image.asset("assets/logoTran.png", width: 80, height: 120),
//         centerTitle: true,
//       ),
//       body: Stack(
//         children: <Widget>[
//           SingleChildScrollView(
//             physics: const NeverScrollableScrollPhysics(),
//             child: Container(
//               height: MediaQuery.of(context).size.height * 1.1,
//               width: MediaQuery.of(context).size.width,
//               decoration: const BoxDecoration(
//                 gradient: RadialGradient(
//                   colors: [
//                     Color(0xffA579A6),
//                     Color(0xff675277),
//                     Color(0xff29243B),
//                     Color(0xff220B33),
//                   ],
//                   radius: 1.3,
//                   focal: Alignment(.25, .45),
//                 ),
//                 image: DecorationImage(
//                   opacity: .7,
//                   image: AssetImage("assets/happyTree.png"),
//                 ),
//               ),
//             ),
//           ),
//           Positioned(
//             top: MediaQuery.of(context).size.height * .1,
//             left: 5,
//             right: 5,
//             child: Container(
//               alignment: Alignment.center,
//               child: const Text(
//                   "Welcome to Bestfriend!\nYou are never too old to meet your new\nBestfriend.",
//                   textAlign: TextAlign.center,
//                   style: TextStyle(color: Colors.white, fontSize: 32)),

//             ),
//           ),
//         ],
//       ),
//       bottomNavigationBar: CustomNavBar(3),
//     );
//   }
// }

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 172, 98, 209),
        title: Image.asset("assets/logoTran.png", width: 80, height: 120),
        centerTitle: true,
      ),
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),
            child: Container(
              height: MediaQuery.of(context).size.height * 1.15,
              width: MediaQuery.of(context).size.width,
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
            top: MediaQuery.of(context).size.height * .15,
            left: 5,
            right: 5,
            child: Container(
              alignment: Alignment.center,
              child: RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                  text: "Welcome to Bestfriend!\n",
                  style: TextStyle(color: Colors.white, fontSize: 34),
                  children: [
                    TextSpan(
                      text:
                          "You are never too old to meet your new\nBestfriend.",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: CustomNavBar(3),
    );
  }
}
