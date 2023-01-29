import 'package:flutter/material.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  final List<String> paragraphs = [
    'This is a mental health app that uses AI to help with theropy and to plug the time that people are put on hold waiting for the suicide helpline. We are using Google Cloud Platform, running python code and generating responses on the AI model that we train. This AI model with fetch the responses and display them in the app.',
    'This is Raj. He is a Computer Science major, with minors in Computation Mathemtics, Science and Engineering and Entrepreneurship and Innovation, at Michigan State University graduating in 2024.',
    'This is Aman. He is a Computer Science, Mathematics and Computational Mathematics major, with minors in Computation Mathemtics, Science and Engineering and Entrepreneurship and Innovation, at Michigan State University graduating in 2024.',
    'This is Kollin. He is a Computer Science and Mathematics major, with a minor in Computation Mathemtics, Science and Engineering, at Michigan State University graduating in 2025.',
    'This is David. He is a Computer Science major with a minor in Mathematics, at Michigan State University graduating in 2024.',
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
                  child: Text(paragraphs[index], textAlign: TextAlign.center)),
            ],
          );
        },
      ),
    );
  }
}
