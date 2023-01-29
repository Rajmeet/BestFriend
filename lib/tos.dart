import 'package:flutter/material.dart';

class ToS extends StatefulWidget {
  const ToS({Key? key}) : super(key: key);

  @override
  _ToSState createState() => _ToSState();
}

class _ToSState extends State<ToS> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 172, 98, 209),
        title: const Text("Terms of Service"),
      ),
    );
  }
}
