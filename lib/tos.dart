import 'package:flutter/material.dart';

class ToS extends StatefulWidget {
  const ToS({Key? key}) : super(key: key);

  @override
  _ToSState createState() => _ToSState();
}

class _ToSState extends State<ToS> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            children: [
              Container(
                height: screenHeight * .2,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 160, 160, 160),
                  border: Border(
                    top: BorderSide(color: Colors.black, width: 2),
                    bottom: BorderSide(color: Colors.black, width: 2),
                  ),
                ),
                child: Image.asset(
                  "assets/logoTran.png",
                ),
              ),
              Container(
                height: screenHeight * .6,
                margin: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 2),
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: const EdgeInsets.all(20),
                child: const SingleChildScrollView(
                  child: Text(
                    "Terms of Service\n\n1. Introduction\nThis Terms of Service (“TOS”) sets forth the terms and conditions under which you may access and use the therapy app (“App”) provided by [Company Name]. By accessing and using the App, you agree to be bound by the terms and conditions set forth in this TOS. If you do not agree to the terms and conditions set forth in this TOS, do not access or use the App.\n\n2. Description of Service\nThe App provides a platform for individuals seeking mental health support to connect with licensed therapists. The App offers a variety of therapy services, including but not limited to individual therapy, couples therapy, and group therapy. The services are provided by licensed therapists who are independent contractors and not employees of Bestfriend.\n\n3. User Conduct\nYou agree not to use the App for any illegal or unethical purpose, and to comply with all applicable laws and regulations. You agree not to use the App to engage in any conduct that is harmful, threatening, abusive, harassing, defamatory, invasive of privacy, vulgar, obscene, sexually explicit, hateful, or otherwise offensive. You also agree not to engage in any conduct that would constitute a criminal offense or give rise to civil liability.\n\n4. User Information\nYou agree to provide accurate and complete information when you register for the App, and to update your information promptly if it changes. You are responsible for maintaining the confidentiality of your account information, including your password.\n\n5. Disclaimer of Warranties\nThe therapy app and its services are provided on an “as is” and “as available” basis without any warranties of any kind. We do not make any representations or warranties of any kind, express or implied, as to the operation of the app or the information, content, materials or products included on the app. To the full extent permissible by applicable law, we disclaim all warranties, express or implied, including but not limited to, implied warranties of merchantability and fitness for a particular purpose. The use of the therapy app is solely at the user's own risk. We do not warrant that the app will meet the user's requirements, or that the app will be uninterrupted, timely, secure, or error-free; nor do we make any warranty as to the results that may be obtained from the use of the app or as to the accuracy or reliability of any information obtained through the app. The user acknowledges that any information sent or received through the app may not be secure and may be intercepted by unauthorized parties. The user acknowledges that by using the app, they assume the security risk for any information sent or received. We do not make any warranty that the app or its services will be free from viruses or other harmful components. The user agrees to hold us harmless for any loss or damage of any kind that may result from the use of the app.",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ],
          ),
          appBar: AppBar(
            backgroundColor: const Color.fromARGB(255, 172, 98, 209),
            title: const Text("Terms of Service"),
          ),
        ),
      ],
    );
  }
}
