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
      // ...
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
