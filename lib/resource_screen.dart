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

  List<Threapist> therapists = [
    Threapist(image: "assets/therapist1.png", name: "Mrs. Noname", score: 3.8),
    Threapist(image: "assets/therapist2.png", name: "Mrs. Doe", score: 2.5),
    Threapist(image: "assets/therapist3.png", name: "Ms. Joy", score: 3.6),
    Threapist(image: "assets/therapist4.png", name: "Mr. Noname", score: 2.2),
    Threapist(image: "assets/therapist5.png", name: "Mr. Doe", score: 4.1),
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
          itemCount: therapists.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () => _openTherapistDetails(index),
              child: Card(
                child: ListTile(
                  leading: Image(image: AssetImage(therapists[index].image!)),
                  title: Padding(
                    padding: const EdgeInsets.fromLTRB(3, 10, 5, 10),
                    child: Text(
                      therapists[index].name!,
                      style: const TextStyle(fontSize: 20),
                    ),
                  ),
                  subtitle: IgnorePointer(
                    ignoring: true,
                    child: RatingBarIndicator(
                      rating: therapists[index].score!,
                      itemBuilder: (context, index) => const Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      itemCount: 5,
                      itemSize: 50.0,
                    ),
                  ),
                ),
              ),
            );
          }),
      bottomNavigationBar: CustomNavBar(0),
    );
  }
}
