import 'package:best_friend/therapistProfile.dart';
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

class _ResourceScreenState extends State<ResourceScreen> {
  void _openTherapistDetails(int index) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => const Therapist(),
      ),
    );
  }

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
          itemCount: 5,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                leading: const FlutterLogo(size: 72.0),
                title: Padding(
                  padding: const EdgeInsets.fromLTRB(3, 10, 5, 10),
                  child: GestureDetector(
                    onTap: () => _openTherapistDetails(index),
                    child: Text(
                      "Therapist " + (index + 1).toString(),
                      style: const TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                subtitle: RatingBar.builder(
                  initialRating: 3,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                  itemBuilder: (context, _) => const Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                ),
              ),
            );
          }),
      bottomNavigationBar: CustomNavBar(0),
    );
  }
}
