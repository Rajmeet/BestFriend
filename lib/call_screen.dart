import 'package:flutter/material.dart';

import 'custom_navbar.dart';

class CallScreen extends StatefulWidget {
  const CallScreen({Key? key}) : super(key: key);

  @override
  _CallScreenState createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Call Screen"),
      ),
      bottomNavigationBar: CustomNavBar(), 
    );
  }
}
