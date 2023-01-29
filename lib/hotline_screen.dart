import 'package:flutter/material.dart';

import 'hotline_assets/send_message_screen.dart';
import 'hotline_assets/message_received_screen.dart';
import 'custom_navbar.dart';

class HotlineScreen extends StatefulWidget {
  const HotlineScreen({Key? key}) : super(key: key);

  @override
  _HotlineScreenState createState() => _HotlineScreenState();
}

class _HotlineScreenState extends State<HotlineScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.home),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        backgroundColor: const Color.fromARGB(255, 172, 98, 209),
        title: Text("Hotline"),
      ),
      body: Container(
        child: ListView(
          children: [
            SentMessageScreen(message: "Hello"),
            ReceivedMessageScreen(message: "Hi, how are you"),
            SentMessageScreen(message: "I am great how are you doing"),
            ReceivedMessageScreen(message: "I am also fine"),
            SentMessageScreen(message: "Can we meet tomorrow?"),
            ReceivedMessageScreen(
                message: "Yes, of course we will meet tomorrow"),
          ],
        ),
      ),
      bottomNavigationBar: CustomNavBar(1),
    );
  }
}
