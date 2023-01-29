import 'package:best_friend/therapistProfile.dart';
import 'dart:math';

import 'package:flutter/material.dart';

import 'about.dart';
import 'tos.dart';
import 'therapistProfile.dart';
import 'custom_navbar.dart';

import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ResourceScreen extends StatefulWidget {
  const ResourceScreen({Key? key}) : super(key: key);

  @override
  _ResourceScreenState createState() => _ResourceScreenState();
}

class Threapist {
  String? image;
  String? name;
  double? score;

// added '?'

  Threapist({this.image, this.name, this.score});
  // can also add 'required' keyword
}

class _ResourceScreenState extends State<ResourceScreen> {
  void _openTherapistDetails(int index) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => const Therapist(),
      ),
    );
  }

  List<Threapist> threapists = [
    Threapist(image: "assets/David.png", name: "David", score: 3.8),
    Threapist(image: "assets/David.png", name: "David", score: 2.5),
  ];

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
        title: const Text("Therapists"),
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
      body: ListView.builder(
          itemCount: threapists.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                leading: Image(image: AssetImage(threapists[index].image!)),
                // add padding to the top of the title
                title: Padding(
                  padding: const EdgeInsets.fromLTRB(3, 10, 5, 10),
                  child: Text(
                    threapists[index].name!,
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                subtitle: IgnorePointer(
                  ignoring: true,
                  child: RatingBarIndicator(
                    rating: threapists[index].score!,
                    itemBuilder: (context, index) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    itemCount: 5,
                    itemSize: 50.0,
                  ),
                ),
              ),
            );
          }),
      bottomNavigationBar: CustomNavBar(0),
    );
  }
}
