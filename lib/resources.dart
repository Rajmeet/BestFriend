import 'package:flutter/material.dart';

import 'about.dart';
import 'tos.dart';
import 'custom_navbar.dart';

class ResourceScreen extends StatefulWidget {
  const ResourceScreen({Key? key}) : super(key: key);

  @override
  _ResourceScreenState createState() => _ResourceScreenState();

  // make a list for name and description
}

class _ResourceScreenState extends State<ResourceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.home),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        backgroundColor: const Color.fromARGB(255, 172, 98, 209),
        title: const Text("Theropists"),
        actions: <Widget>[
          PopupMenuButton<int>(
            onSelected: (value) {
              if (value == 1) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ToS()),
                );
              } else if (value == 2) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const About()),
                );
              }
            },
            itemBuilder: (context) {
              return [
                const PopupMenuItem(
                  value: 1,
                  child: Text("Terms of Service"),
                ),
                const PopupMenuItem(
                  value: 2,
                  child: Text("About"),
                ),
              ];
            },
          ),
        ],
      ),
      bottomNavigationBar: CustomNavBar(0),
    );
  }
}
