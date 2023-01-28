import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'custom_navbar.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chat"),
      ),
      bottomNavigationBar: CustomNavBar(), 
    );
  }
}
