import 'package:flutter/material.dart';

class ToS extends StatefulWidget {
  const ToS({Key? key}) : super(key: key);

  @override
  _ToSState createState() => _ToSState();
}

class _ToSState extends State<ToS> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/logoTran.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Scaffold(
          appBar: AppBar(
            backgroundColor: const Color.fromARGB(255, 172, 98, 209),
            title: const Text("Terms of Service"),
          ),
          body: Container(
            margin: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 2),
              color: Colors.grey[400],
              borderRadius: BorderRadius.circular(20),
            ),
            padding: const EdgeInsets.all(20),
            child: const SingleChildScrollView(
              child: Text(
                "yes",
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
//                 "Terms of Service\n\n1. Introduction\nThis Terms of Service (“TOS”) sets forth the terms and conditions under which you may access and use the therapy app (“App”) provided by [Company Name]. By accessing and using the App, you agree to be bound by the terms and conditions set forth in this TOS. If you do not agree to the terms and conditions set forth in this TOS, do not access or use the App.\n\n2. Description of Service\nThe App provides a platform for individuals seeking mental health support to connect with licensed therapists. The App offers a variety of therapy services, including but not limited to individual therapy, couples therapy, and group therapy. The services are provided by licensed therapists who are independent contractors and not employees of [Company Name].\n\n3. User Conduct\nYou agree not to use the App for any illegal or unethical purpose, and to comply with all applicable laws and regulations. You agree not to use the App to engage in any conduct that is harmful, threatening, abusive, harassing, defamatory, invasive of privacy, vulgar, obscene, sexually explicit, hateful, or otherwise offensive. You also agree not to engage in any conduct that would constitute a criminal offense or give rise to civil liability.\n\n4. User Information\nYou agree to provide accurate and complete information when you register for the App, and to update your information promptly if it changes. You are responsible for maintaining the confidentiality of your account information, including your password.\n\n5. Disclaimer of Warranties\nTHE APP IS PROVIDED “AS IS” WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESS OR IMPLIED, INCLUDING WITHOUT LIMITATION ANY WARRANTY FOR INFORMATION, SERVICES, UNINTERRUPTED ACCESS, OR PRODUCTS PROVIDED THROUGH OR IN CONNECTION WITH THE APP, INCLUDING WITHOUT LIMITATION THE SOFTWARE LICENSED TO YOU AND THE RESULTS OBTAINED THROUGH THE APP. SPECIFICALLY, [COMPANY NAME] DISCLAIMS ANY AND ALL WARRANTIES, INCLUDING WITHOUT LIMITATION: 1) ANY",
