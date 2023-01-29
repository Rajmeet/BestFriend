import 'package:flutter/material.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  final List<String> paragraphs = [
    'BestFriend is a mental health app that uses AI-powered conversations to help with therapy and alleviate the time people spend while on hold waiting for the Suicide & Crisis hotline. We are using Google Cloud Platform, running python code and generating responses on the AI model that we train. This AI model fetches user responses and displays them in the app.\n',
    'Rajmeet Chandok\nComputer Science major, with minors in Computation Mathematics, Science and Engineering and Entrepreneurship and Innovation, at Michigan State University graduating in 2024.\n',
    'Aman Thamminana\nComputer Science, Mathematics and Computational Mathematics major, with minors in Computation Mathematics, Science and Engineering and Entrepreneurship and Innovation, at Michigan State University graduating in 2024.\n',
    'Kollin Bartz\nComputer Science and Mathematics major, with a minor in Computation Mathematics, Science and Engineering, at Michigan State University graduating in 2025.\n',
    'David Rackerby\nComputer Science major with a minor in Mathematics, at Michigan State University graduating in 2024.\n',
  ];
  final List<String> images = [
    'assets/logoTran.png',
    'assets/Raj.png',
    'assets/Aman.png',
    'assets/Kollin.png',
    'assets/David.png',
  ];

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 172, 98, 209),
        title: const Text("About"),
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          final lines = paragraphs[index].split("\n");
          return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                (index == 0)
                    ? Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Colors.grey[400],
                        ),
                        height: screenHeight * .2,
                        child: Image.asset(images[index]),
                      )
                    : Container(
                        height: screenHeight * 0.2,
                        child: Image.asset(images[index]),
                      ),
                const SizedBox(
                  height: 10,
                ),
                Center(
                  child: Column(
                    children: <Widget>[
                      Text(
                        lines[0],
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text(lines[1]),
                    ],
                  ),
                ),
              ]);
        },
      ),
    );
  }
}
